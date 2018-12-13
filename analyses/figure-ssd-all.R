# Figures for SSD
# Natalie Cooper 
# July/Aug 2018
#------------------------
# Load libraries
library(tidyverse)
library(viridis)
library(patchwork)

# Add rphylopic
#install.packages("remotes")
#remotes::install_github("sckott/rphylopic")
library(rphylopic)

# Read in phylopics
library(png)
img_tit <- readPNG("birds/img/tit.png")
img_parrot <- readPNG("birds/img/parrot.png")
img_shorebird <- readPNG("birds/img/shorebird.png")
img_pigeon <- readPNG("birds/img/pigeon.png")
img_hummingbird <- readPNG("birds/img/hummingbird.png")
img_woodpecker <- readPNG("birds/img/woodpecker.png")

# Colour blind friendly palette
# First is grey
cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", 
               "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

# Helper code for ggplots
remove_y <- 
  theme(axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank())

remove_x <-   
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())
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
# Read in the body size data
extra <- read_csv("birds/data/all-extra-data-birds.csv")
glimpse(extra)

# Merge with the specimen data
# Exclude anything that doesn't have specimen data
ds_SSD <- left_join(ds, extra)
#-------------------------------------------------------------
# Plotting
# 1. All species
ggplot(ds_SSD, aes(x = log(SSD), y = propf)) +
  geom_point() +
  geom_hline(yintercept = 50, linetype = 2) +
  geom_vline(xintercept = 0, linetype = 3) +
  theme_bw(base_size = 14) +
  xlab("log sexual size dimorphism") +
  ylab("% female specimens") +
  ylim(0, 100)

ggsave("birds/figures/ssd-all-birds.png")
#-------------------------------------------------------------------
# 2. All orders

ggplot(ds_SSD, aes(x = log(SSD), y = propf, colour = order)) +
  geom_point() +
  geom_hline(yintercept = 50, linetype = 2) +
  geom_vline(xintercept = 0, linetype = 3) +
  theme_bw(base_size = 14) +
  xlab("log SSD") +
  ylab("% female specimens") +
  ylim(0, 100) +
  theme(legend.position = "none",
        strip.background = element_rect(fill="white")) +
  facet_wrap(~order) 

ggsave("birds/figures/ssd-orders-all-birds.png")
#-------------------------------------------------------------------
# 3. Order plots (Top 6 only)

# Create new dataframes for each order
ds_pass <- 
  ds_SSD %>%
  filter(order == "Passeriformes")

ds_hum <- 
  ds_SSD %>%
  filter(order == "Apodiformes")

ds_wood <- 
  ds_SSD %>%
  filter(order == "Piciformes")

ds_parrot <- 
  ds_SSD %>%
  filter(order == "Psittaciformes")

ds_shore <- 
  ds_SSD %>%
  filter(order == "Charadriiformes")

ds_pigeon <- 
  ds_SSD %>%
  filter(order == "Columbiformes")

#--------------------------------------
# Make base plot
base <-
  ggplot(ds_SSD, aes(x = log(SSD), y = propf)) +
  geom_hline(yintercept = 50, linetype = 2) +
  geom_vline(xintercept = 0, linetype = 3) +
  theme_bw(base_size = 14) +
  xlab("") +
  ylab("% female specimens") +
  ylim(0, 100) +
  xlim(-0.5, 0.5)

# Make plots for each order
pass <-
  base +
  geom_point(data = ds_pass, colour = cbPalette[2]) +
  add_phylopic(img = img_tit, alpha = 1, x = -0.35, y = 95, ysize = 10) +
  remove_x

hum <-
  base +
  geom_point(data = ds_hum, colour = cbPalette[3]) +
  add_phylopic(img = img_hummingbird, alpha = 1, x = -0.35, y = 95, ysize = 15) +
  remove_x +
  remove_y

wood <-
  base +
  geom_point(data = ds_wood, colour = cbPalette[4]) +
  add_phylopic(img = img_woodpecker, alpha = 1, x = -0.4, y = 95, ysize = 15) +
  remove_x +
  remove_y

parrot <-
  base +
  geom_point(data = ds_parrot, colour = cbPalette[5]) +
  add_phylopic(img = img_parrot, alpha = 1, x = -0.4, y = 95, ysize = 15)

shore <-
  base +
  geom_point(data = ds_shore, colour = cbPalette[8]) +
  add_phylopic(img = img_shorebird, alpha = 1, x = -0.35, y = 95, ysize = 12) +
  remove_y +
  xlab("log sexual size dimorphism")

pigeon <-
  base +
  geom_point(data = ds_pigeon, colour = cbPalette[7]) +
  add_phylopic(img = img_pigeon, alpha = 1, x = -0.35, y = 95, ysize = 10) +
  remove_y

(pass | hum | wood)/(parrot | shore | pigeon)

ggsave("birds/figures/ssd-orders-six-birds.png")
