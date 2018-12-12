# Tidying the data from databases
# Natalie Cooper
# Dec 2018
#---------------------------------
# Load libraries
library(tidyverse)
library(lubridate)
library(purrr)
library(taxize)

# Short function to get decades
floor_decade <- function(x){
  if(!is.na(x)){
  x - x %% 10
  }else{NA_character_}
}
#---------------------------------------------------------------
# Read in the GBIF data
#---------------------------------------------------------------
# Birds
amnh_b <- read_delim("raw-data/AMNH_birds.txt", delim = "\t")
fmnh_b <- read_delim("raw-data/FMNH_birds.txt", delim = "\t") 
mnhn_b <- read_delim("raw-data/MNHN_birds.txt", delim = "\t")
nmnh_b <- read_delim("raw-data/NMNH_birds.txt", delim = "\t")
nhmuk_b <- read_delim("raw-data/NHMUK_birds.txt", delim = "\t")

# Mammals
amnh_m <- read_delim("raw-data/AMNH_mammals.txt", delim = "\t")
fmnh_m <- read_delim("raw-data/FMNH_mammals.txt", delim = "\t") 
mnhn_m <- read_delim("raw-data/MNHN_mammals.txt", delim = "\t")
nmnh_m <- read_delim("raw-data/NMNH_mammals.txt", delim = "\t")
nhmuk_m <- read_delim("raw-data/NHMUK_mammals.txt", delim = "\t")

# Combine into a list
all <- list(amnh_b, fmnh_b, mnhn_b, nmnh_b, nhmuk_b,
            amnh_m, fmnh_m, mnhn_m, nmnh_m, nhmuk_m)

# Combine based on shared columns
# and make a new binomial column
ds <- all %>%
  map(function(x) x[Reduce(intersect, map(all, colnames))]) %>% 
  reduce(rbind)

#----------------------------------
# Tidy up the data
#----------------------------------
ds2 <-
  
  ds %>%
  
  # Remove paleo collections from NHMUK data and other incorrect codes
  filter(collectionCode != "PAL" & collectionCode != "Birds - Eggs" & 
         collectionCode != "BOT" & collectionCode != "Fishes" &
         collectionCode != "BMNH(E)" & collectionCode != "Entomology") %>%
  
  # Remove weird collections that aren't the key datasets
  filter(institutionCode == "USNM" | institutionCode == "FMNH" |
         institutionCode == "AMNH" | institutionCode == "NHMUK" |
         institutionCode == "MNHN" ) %>%

  # Check that all included records are specimens not observations
  filter(basisOfRecord == "PRESERVED_SPECIMEN") %>%
  
  # Create a new column for specimen ID number
  unite(col = specID, `institutionCode`, `catalogNumber`, sep = "_", remove = FALSE) %>%
  
  # Remove records where specimen is definitely not an adult
  # This will exclude the juveniles, fetuses and young
  # All unknown age individuals (the majority) are kept, on the basis
  # that juveniles are almost always coded as such, but adult status is not
  filter(lifeStage == "ADULT" | is.na(lifeStage)) %>%
  
  # Remove capitalised words
  mutate(sex = str_replace(sex, "FEMALE", "Female")) %>%
  mutate(sex = str_replace(sex, "MALE", "Male")) %>%
  
  # Extract only male or female specimens
  # Excludes specimens with ?, intersex and multiple sex specimens
  filter(sex == "Male" | sex == "Female" | is.na(sex)) %>%
  
  # Replace the poorly coded year data with NAs
  mutate(year = as.numeric(year)) %>%
  mutate(year = ifelse(year > 2018 | year < 1750, NA_character_, year)) %>%
  # Coerce to numeric again
  mutate(year = as.numeric(year)) %>%
  
  # Add decade variable (function above)
  # This maps to character to deal with NAs so needs coercing back to numeric
  mutate(decade = map_chr(year, floor_decade)) %>%
  mutate(decade = as.numeric(decade)) %>%
  
  # TAXONOMY (note there is a second set of checks later)
  # 1. Remove entries where we only have the Genus
  # 2. Create binomial column
  separate(species, c("Genus", "Species"), sep = " ", 
           extra = "drop", fill = "right") %>%
  filter(!is.na(Species) & Species != "sp." & Species != "sp") %>%
  unite("binomial", Genus, Species, sep = " ") %>%
    
  # Remove entries with no order designated (these are errors)
  filter(!is.na(order)) %>%
  
  # Remove classes that shouldn't be there
  filter(class != "Actinopterygii" & class != "Insecta" & class != "MALE") %>%

  # Add a name bearing type column and designate name bearing types as such
  # Non types
  mutate(type = if_else(is.na(typeStatus), "NonType", typeStatus)) %>%
  
  # Name bearing types
  mutate(type = str_replace(type, "HOLOTYPE", "Type")) %>%
  mutate(type = str_replace(type, "SYNTYPE", "Type")) %>%
  mutate(type = str_replace(type, "LECTOTYPE", "Type")) %>%
  mutate(type = str_replace(type, "NEOTYPE", "Type")) %>%
  mutate(type = str_replace(type, "COTYPE", "Type")) %>%
  
  # Non name bearing types
  mutate(type = str_replace(type, "ALLOTYPE", "NonNameType")) %>%
  mutate(type = str_replace(type, "PARALECTOTYPE", "NonNameType")) %>%
  mutate(type = str_replace(type, "PARATYPE", "NonNameType")) %>%
  mutate(type = str_replace(type, "TOPOTYPE", "NonNameType")) %>% 
  
  # It is unclear if these are name bearing or not
  mutate(type = str_replace(type, "TYPE", "AmbiguousType")) %>%
  
  # Rename classes to english names
  mutate(class = str_replace_all(class, "Aves", "Birds")) %>%
  mutate(class = str_replace_all(class, "Mammalia", "Mammals")) %>%
  
  # Select just the columns of interest
  select(institutionCode, specID, binomial, sex, class, order, family, genus,
         continent, year, decade, typeStatus, type) 

#----------------------------------------------------------------
# Match taxonomy to GBIF (birds) and MSW (mammals)
# See 01B-taxonomy-check.R for code to check for issues
# Then fix problems with taxonomy
# This is extrememly long so I've put in into another script
# It takes ds2 and corrects the taxonomy into ds3 binomial column

# Takes ages to run - go and get a coffee or some cake...
#----------------------------------------------------------------
source("data-wrangling/01C-taxonomy-corrections.R")

#--------------------------------------------------
# Exclude dodgy ones based on taxonomy
# See 03-taxonomy-corrections.R for details
# These specimens have NA for binomials
#--------------------------------------------------
ds3 <- ds3 %>%
  filter(!is.na(binomial))

#-----------------------------------------------------
# Write to file for analyses
#-----------------------------------------------------
write_csv(ds3, path = "data/all-specimen-data.csv")  

#------------------------------------------------------------------------------------
# Note that this was followed by a data quality check, scrolling through
# species names to check for obvious duplicates (i.e. very similar species names)
# and matching with body size dataset species names to reduce mismatches caused
# by taxonomic differences