# Figures for plumage and horns
# Natalie Cooper 
# Feb 2019
#------------------------
# Load libraries
library(tidyverse)
library(patchwork)
library(here)

# Colour blind friendly palette
# First is grey
cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", 
               "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

#-------------------------------------------------------------
# Read in all the data
specimens <- read_csv(here("data/all-specimen-data.csv"))
#------------------------
# Extract data required
#------------------------
ds <-
  specimens %>%
  filter(!is.na(sex)) %>%
  group_by(class) %>%
  add_count(binomial, name = "n") %>%
  add_count(binomial, sex, name = "nn") %>%
  filter(n >= 100 & sex == "Female") %>%
  mutate(percent = nn/n*100) %>%
  select(class, order, binomial, percent) %>%
  distinct()

#-------------------------------------------------------------
# Read in the body size data and merge
#-------------------------------------------------------------
extra <- read_csv(here("data/all-extra-data.csv"))

# Merge with the specimen data
# Exclude anything that doesn't have specimen data
ds_extra <- left_join(ds, extra)

#-------------------------------------------------------------
# Select Passeriformes as we only have plumage data for these
ds_plumage <- 
  ds_extra %>%
  filter(order == "Passeriformes" & !is.na(plumageD))

# Select mammals
ds_mammals <- 
  ds_extra %>%
  filter(class == "Mammals")
  
# Select mammals with ornamentation only
ds_mammals2 <- 
  ds_mammals %>%
  filter(ornamentation == "Present")

#-------------------------------------------------------------
# Plotting

p1 <-
  ggplot(ds_plumage, aes(x = log(plumageD), y = percent)) +
  geom_point(alpha = 0.8, col = cbPalette[2]) +
  geom_hline(yintercept = 50, linetype = 2) +
  geom_vline(xintercept = 0, linetype = 3) +
  theme_bw(base_size = 14) +
  ylab("% female specimens") +
  ylim(0, 100) +
  scale_colour_manual(values = c(cbPalette[c(4, 3, 1)])) +
  xlim(-0.25, 0.75) +
  xlab("log plumage dimorphism") +
  theme(legend.position = "none")

p1

ggsave(here("figures/plumage.png"))
#-------------------------------------------------------------------

absent <- 
  ggplot(ds_mammals, aes(x = percent, fill = ornamentation)) +
  geom_density(alpha = 0.5, colour = NA) +
  geom_vline(xintercept = 50, linetype = 2) +
  theme_bw(base_size = 14) +
  xlab("% female specimens") +
  xlim(0, 100) +
  scale_fill_manual(values = c(cbPalette[1], cbPalette[3]),
                    name = "Ornamentation") +
  theme(legend.position = "right",
        strip.background = element_rect(fill = "white"),
        legend.title = element_text()) +
  remove_x

orn <-
  ggplot(ds_mammals2, aes(x = percent, fill = ornamentedsex)) +
  geom_density(alpha = 0.5, colour = NA) +
  geom_vline(xintercept = 50, linetype = 2) +
  theme_bw(base_size = 14) +
  xlab("% female specimens") +
  xlim(0, 100) +
  ylim(0, 0.06) +
  scale_fill_manual(values = c(cbPalette[4], cbPalette[3]),
                  name = "Ornamented sex",
                  labels = c("Both", "Male only")) +
  theme(legend.position = "right",
        strip.background = element_rect(fill = "white"),
        legend.title = element_text()) 

absent/orn

ggsave(here("figures/ornamentation.png"))
