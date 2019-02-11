# Plot % on phylogenies
# Natalie Cooper
# Feb 2019

# Preliminaries

# Load libraries
library(tidyverse)
library(patchwork) # from GitHub
library(png)
library(knitr)
library(broom)
library(here)
library(ape)
library(phytools)

# Colour blind friendly palette
cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", 
               "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

#-----------------------------
# Read in all the specimen data
specimens <- read_csv(here("data/all-specimen-data.csv")) 

# Reformat data to get M & F specimens per species and percent F
ds_100 <-
  specimens %>%
  filter(!is.na(sex)) %>%
  group_by(class) %>%
  add_count(binomial) %>%
  add_count(binomial, sex) %>%
  filter(n >= 100 & sex == "Female") %>%
  mutate(percent = (nn/n)*100) %>%
  rename(female = nn) %>%
  mutate(male = n - female) %>%
  select(class, order, binomial, percent, male, female) %>%
  distinct()

ds_all <-
  specimens %>%
  filter(!is.na(sex)) %>%
  group_by(class) %>%
  add_count(binomial) %>%
  add_count(binomial, sex) %>%
  filter(sex == "Female") %>%
  mutate(percent = (nn/n)*100) %>%
  rename(female = nn) %>%
  mutate(male = n - female) %>%
  select(class, order, binomial, percent, male, female) %>%
  distinct()

#-----------------------------
# Read in the phylogenies
#-----------------------------

# Birds

# Mammals

