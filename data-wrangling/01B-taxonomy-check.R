# Script to identify taxonomic issues
# Script works on d2 created in 01-wrangling-museum-data.R
# Identifies problem taxa which are then corrected in 03-taxonomy-corrections.R

# Load libraries
library(tidyverse)
library(taxize)

#------------------------------------------------------
# Mammals: correct to MSW 2005 as other data use
# this taxonomy
#------------------------------------------------------
  ds_mammals <- filter(ds2, class == "Mammals")

  # Extract suggestions for species names from MSW (174)
  # this takes a while and will not return entries with no
  # matching possible so these require a check by hand.
  fix.names <- gnr_resolve(names = unique(ds_mammals$binomial), 
                           preferred_data_sources = 174,
                           best_match_only = TRUE,
                           with_canonical_ranks = TRUE)
  
  # Exclude fixes where only the Genus is available
  fix.names2 <- fix.names %>%
    separate(matched_name2, c("Genus", "species")) %>%
    filter(!is.na(species)) %>%
    unite(binomial, Genus, species, sep = " ") %>%
    select(user_supplied_name, binomial) 
  
  # Join the corrected names to the full dataset
  ds3 <- full_join(ds_mammals, fix.names2,
                   by = c("binomial" = "user_supplied_name"))
  
  # Identify names that need to be fixed
  # These may be taxonomic changes or new species
  problems_mammals <-
    ds3 %>%
    group_by(class) %>%
    filter(is.na(binomial.y)) %>%
    select(class, binomial) %>%
    arrange(class, binomial) %>%
    distinct()
  
#-----------------------------------------------------------
# Birds: Use GBIF backbone taxonomy as other data uses a 
# variety of taxonomies.
# Would prefer to use BirdLife International -  but this gives
# 3673 mismatches for no clear reason.
#-----------------------------------------------------------
  ds_birds <- filter(ds2, class == "Birds")
  
  fix.names <- gnr_resolve(names = unique(ds_birds$binomial), 
                           preferred_data_sources = 11,
                           best_match_only = TRUE,
                           with_canonical_ranks = TRUE)
  
  # Exclude fixes where only the Genus is available
  fix.names2 <- fix.names %>%
    separate(matched_name2, c("Genus", "species")) %>%
    filter(!is.na(species)) %>%
    unite(binomial, Genus, species, sep = " ") %>%
    select(user_supplied_name, binomial) 
  
  # Join the corrected names to the full dataset
  ds3 <- full_join(ds_birds, fix.names2,
                   by = c("binomial" = "user_supplied_name"))
  
  # Identify names that need to be fixed
  problems_birds <-
    ds3 %>%
    group_by(class) %>%
    filter(is.na(binomial.y)) %>%
    select(class, binomial) %>%
    arrange(class, binomial) %>%
    distinct()

#-----------------------------------------------------
# Unfortunately the taxonomic corrections 
# then have to be done by hand as the automation is
# not 100% effective.