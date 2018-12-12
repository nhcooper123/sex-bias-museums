# Create dataset for extra species level variables
# Natalie Cooper
# Dec 2018
#--------------------------------------------------
# Load libraries
library(tidyverse)

# Read in full specimen dataset to extract species
all <- read_csv("data/all-specimen-data.csv")

# Extract bird species
species_birds <- 
  all %>%
  filter(class == "Birds") %>%
  select(binomial) %>%
  distinct()

# Extract mammal species
species_mammals <- 
  all %>%
  filter(class == "Mammals") %>%
  select(binomial) %>%
  distinct()

#-----------------------------------
# Birds: body mass and SSD
#-----------------------------------
# Read in mass and SSD data
body <- read_delim("raw-data/avian_ssd_jan07.txt", delim = "\t")

# Rename binomial column for merging
# Replace -999 with NA
# Remove excess variables
# Calculate SSD
body <- 
  body %>%
  rename(binomial = Species_name) %>%
  rename(male_mass = M_mass) %>%
  rename(female_mass = F_mass) %>%
  mutate(male_mass = as.numeric(ifelse(male_mass < 0, NA_character_, male_mass))) %>%
  mutate(female_mass = as.numeric(ifelse(female_mass < 0, NA_character_, female_mass))) %>%
  mutate(SSD = male_mass/female_mass) %>%
  select(binomial, male_mass, female_mass, SSD) %>%
  distinct()

# Fix the taxonomy so it matches the specimen data
# This takes body and outputs body2
source("data-wrangling/02B-taxonomy-corrections-mass-birds.R")

#-----------------------------------
# Birds: plumage data
#-----------------------------------
plumage <- read_csv("raw-data/plumage_scores.csv")

# Rename binomial column for merging
# Replace -999 with NA
# Remove excess variables
# Calculate SSD in plumage scores
plumage <- 
  plumage %>%
  rename(binomial = Scientific_name) %>%
  rename(male_plumage = Male_plumage_score) %>%
  rename(female_plumage = Female_plumage_score) %>%
  mutate(plumageD = male_plumage/female_plumage) %>%
  select(binomial, male_plumage, female_plumage, plumageD) %>%
  distinct()

# Fix the taxonomy so it matches the specimen data
# This takes plumage and outputs plumage2
source("data-wrangling/02C-taxonomy-corrections-plumage-birds.R")

#--------------------------------------
# Merge body size data and plumage data
#--------------------------------------
extra <- body2 %>%
  full_join(plumage2, by = "binomial") %>%
  distinct()

#---------------------------------------------------------
# Merge with specimen data species list, 
# cutting any species not found in the specimen data
#---------------------------------------------------------
all_birds <- left_join(species_birds, extra, by = "binomial")

#--------------------------------------------
# Mammals: SSD data
# This comes from PanTheria's flat files
# where the numbers are disaggregated by sex 
# but needs some processing
#--------------------------------------------
# Read in SSD data
body_mammals <- read_delim("raw-data/MF2WR05_Select_BodyMass_A_U.txt", delim = "\t")

# Group by sex
# Take the median values
# Divide male mass by female mass to get SSD
body_mammals <- 
  body_mammals %>%
  filter(Sex == "Female" | Sex == "Male") %>%
  group_by(MSW05Binomial, Sex) %>%
  summarise(medianBM = mean(`Body Mass (g)`)) %>%
  spread(Sex, medianBM) %>%
  mutate(SSD = Male/Female) %>%
  rename(binomial = MSW05Binomial) %>%
  rename(male_mass = Male) %>%
  rename(female_mass = Female)

#--------------------------------------------
# Mammals: Ornamentation data
#-------------------------------------------------
ornament <- read_csv("raw-data/ornamentation.csv")

#---------------------------------------------------------
# Merge with body size data
#---------------------------------------------------------
extra2 <- body_mammals %>%
  full_join(ornament, by = "binomial") %>%
  distinct()

#---------------------------------------------------------
# Merge with specimen data species list, 
# cutting any species not found in the specimen data
#---------------------------------------------------------
all_mammals <- left_join(species_mammals, extra2, by = "binomial")

#--------------------------------
# Merge mammal and bird data
#--------------------------------
all <- full_join(all_birds, all_mammals)  

# Write to file
write_csv(all, "data/all-extra-data.csv")
