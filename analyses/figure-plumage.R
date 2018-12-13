# Figures for ornamentation
# Natalie Cooper 
# July/Aug 2018
#------------------------
# Load libraries
library(tidyverse)
library(patchwork)

# Colour blind friendly palette
# First is grey
cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", 
               "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

#-------------------------------------------------------------
# Read in all the data
specimens <- read_csv("birds/data/all-specimen-data-birds.csv")
glimpse(specimens)

# Summarise by species
# Extract numbers of males and females
# proportions, and totals
# Remove species with < 100 specimens
ds <-
  specimens %>%
  group_by(binomial, order) %>%
  summarise(f = sum(sex == "Female"),
            m = sum(sex == "Male"),
            total = n(),
            propf = f/total*100,
            propm = m/total*100) %>%
  filter(total >= 100)

# Check this 
ds

#-------------------------------------------------------------
# Read in the ornamentation data
extra <- read_csv("birds/data/all-extra-data-birds.csv")
glimpse(extra)

# Merge with the specimen data
# Exclude anything that doesn't have specimen data
ds_orn <- left_join(ds, extra)

# Select Passeriformes as we only have plumage data for these
ds_orn <- 
  ds_orn %>%
  filter(order == "Passeriformes" & !is.na(plumageD)) %>%
  mutate(fancy = ifelse(plumageD > 1.1, "male", ifelse(plumageD < 0.9, "female", "neither")))
  
#-------------------------------------------------------------
# Plotting

p1 <-
  ggplot(ds_orn, aes(x = log(plumageD), y = propf, colour = fancy)) +
  geom_point(alpha = 0.8) +
  geom_hline(yintercept = 50, linetype = 2) +
  geom_vline(xintercept = 0, linetype = 3) +
  theme_bw(base_size = 14) +
  ylab("% female specimens") +
  ylim(0, 100) +
  scale_colour_manual(values = c(cbPalette[c(4, 3, 1)])) +
  xlim(-0.25, 0.75) +
  xlab("plumage dimorphism") +
  theme(legend.position = "none")

p2 <-
  ggplot(ds_orn, aes(x = propf, colour = fancy, fill = fancy)) +
  geom_density(alpha = 0.5) +
  geom_vline(xintercept = 50, linetype = 2) +
  theme_bw(base_size = 14) +
  xlab("% female specimens") +
  scale_colour_manual(values = c(cbPalette[c(4, 3, 1)])) +
  scale_fill_manual(values = c(cbPalette[c(4, 3, 1)])) +
  xlim(0, 100) +
  theme(legend.position = "none",
        strip.background = element_rect(fill="white"))+
  facet_wrap(~fancy, ncol = 1)

(p1 + p2)

ggsave("birds/figures/plumage-passeriformes.png")
#-------------------------------------------------------------------
