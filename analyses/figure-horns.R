# Figures for ornamentation
# Natalie Cooper 
# July/Aug 2018
#------------------------
# Load libraries
library(tidyverse)

# Colour blind friendly palette
# First is grey
cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", 
               "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

#-------------------------------------------------------------
# Read in all the data
specimens <- read_csv("mammals/data/all-specimen-data.csv")
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
extra <- read_csv("mammals/data/all-extra-data.csv")
glimpse(extra)

# Merge with the specimen data
# Exclude anything that doesn't have specimen data
ds_orn <- left_join(ds, extra)

# Select Artiodactyla and remove ossicles
ds_orn <- 
  ds_orn %>%
  filter(order == "Artiodactyla") %>%
  filter(feature != "ossicle")

# Look at distribution of the characteristics
ds_orn %>%
  group_by(ornamentation, ornamentedsex, extremesex, feature) %>%
  summarise(n())

# All 49 artiodactyls in the dataset have some kind of ornamentation 
# Skew towards males even where females have horns/tusks too
# Possibly becasue males almost always have larger horns/tusks?

#-------------------------------------------------------------
# Plotting

ggplot(ds_orn, aes(x = propf, col = ornamentedsex, fill = ornamentedsex)) +
  geom_density(alpha = 0.5) +
  geom_vline(xintercept = 50, linetype = 2) +
  theme_bw(base_size = 14) +
  xlab("% female specimens") +
  xlim(0, 100) +
  facet_wrap(~feature) +
  scale_colour_manual(values = c(cbPalette[4], cbPalette[3]),
                      name = "Sex with\nornament",
                      breaks = c("Both", "Male"),
                      labels = c("Both", "Male only")) +
  scale_fill_manual(values = c(cbPalette[4], cbPalette[3]),
                    name = "Sex with\nornament",
                    breaks = c("Both", "Male"),
                    labels = c("Both", "Male only")) +
  theme(legend.position = "right",
        strip.background = element_rect(fill = "white"),
        legend.title = element_text()) 

ggsave("mammals/figures/ornament-artiodactyla.png")
#-------------------------------------------------------------------
