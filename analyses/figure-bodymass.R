# Figures for body mass
# Natalie Cooper 
# Feb 2019
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
img_tit <- readPNG(here("img/tit.png"))
img_parrot <- readPNG(here("img/parrot.png"))
img_shorebird <- readPNG(here("img/shorebird.png"))
img_pigeon <- readPNG(here("img/pigeon.png"))
img_hummingbird <- readPNG(here("img/hummingbird.png"))
img_woodpecker <- readPNG(here("img/woodpecker.png"))
img_bat <- readPNG(here("img/bat.png"))
img_mouse <- readPNG(here("img/mouse.png"))
img_tiger <- readPNG(here("img/tiger.png"))
img_deer <- readPNG(here("img/deer.png"))
img_shrew <- readPNG(here("img/shrew.png"))
img_monkey <- readPNG(here("img/monkey.png"))

# Colour blind friendly palette
# First is grey
cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", 
               "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

# Helper functions for plotting
remove_y <- 
  theme(axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank())

remove_x <-   
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

#------------------------
# Read in all the data
#------------------------
# Read in all the specimen data and body size data
specimens <- read_csv(here("data/all-specimen-data.csv")) 
extra <- read_csv(here("data/all-extra-data.csv"))

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
  mutate(percent = (nn/n)*100) %>%
  rename(female = nn) %>%
  mutate(male = n - female) %>%
  select(class, order, binomial, percent, male, female) %>%
  distinct()

# Merge body size data with the specimen data
# Exclude anything that doesn't have specimen data
ds_ssd <- left_join(ds, extra)

#-------------------------------------------------------------------
# BIRDS
# Plot % female ~ SSD by order (all for appendix)
#-------------------------------------------------------------------
# Select birds only
ds2 <- 
  ds_ssd %>%
  filter(class == "Birds")

ggplot(ds2, aes(x = log(SSD), y = percent, colour = order)) +
  geom_point(alpha = 0.8) +
  geom_vline(xintercept = 0, linetype = 3) +
  geom_hline(yintercept = 50, linetype = 2) +
  geom_smooth(method = "lm", se = FALSE, col = "grey", size = 0.5) +
  theme_bw(base_size = 14) +
  ylab("% female specimens") +
  xlab("log sexual size dimorphism") +
  ylim(0, 100) +
  theme(legend.position = "none",
        strip.background = element_rect(fill="white")) +
  facet_wrap(~order)  

#ggsave("figures/ssd-percent-birds-all.png", width = 200, units = "mm")

#-------------------------------------------------------------------
# MAMMALS
# Plot % female by order
#-------------------------------------------------------------------
# Density plots (all for appendix)
#-------------------------------------------------------------------
# Select mammals only
# Remove the orders with only two species
ds3 <- 
  ds_ssd %>%
  filter(class == "Mammals" & 
         order != "Sirenia" & order != "Proboscidea" 
         & order != "Pholidota" & order != "Dermoptera"
         & order != "Paucituberculata" & order != "Cingulata"
         & order != "Monotremata")

ggplot(ds3, aes(x = log(male_mass), y = percent, colour = order)) +
  geom_point(alpha = 0.8) +
  geom_vline(xintercept = 0, linetype = 3) +
  geom_hline(yintercept = 50, linetype = 2) +
  geom_smooth(method = "lm", se = FALSE, col = "grey", size = 0.5) +
  theme_bw(base_size = 14) +
  ylab("% female specimens") +
  xlab("log sexual size dimorphism") +
  ylim(0, 100) +
  #xlim(-1, 1.5) + 
  theme(legend.position = "none",
        strip.background = element_rect(fill="white")) +
  facet_wrap(~order) 

#ggsave("figures/orders-density-mammals-all.png", width = 200, units = "mm")

#-------------------------------------------------------------------
# Density plots (Top 6 orders only)
# Rodentia, Chiroptera, Soriciomorpha, 
# Carnivora, Primates, Artiodactyla
#-------------------------------------------------------------------
# Create new dataframes for each order
ds_rodent <- 
  ds_orders %>%
  filter(order == "Rodentia")

ds_bat <- 
  ds_orders %>%
  filter(order == "Chiroptera")

ds_sor <- 
  ds_orders %>%
  filter(order == "Soricomorpha")

ds_carn <- 
  ds_orders %>%
  filter(order == "Carnivora")

ds_primate <- 
  ds_orders %>%
  filter(order == "Primates")

ds_artio <- 
  ds_orders %>%
  filter(order == "Artiodactyla")

#--------------------------------------
# Make base plot
#--------------------------------------
base <-
  ggplot(ds_rodent, aes(x = percent)) +
  geom_vline(xintercept = 50, linetype = 2) +
  theme_bw(base_size = 14) +
  xlab("") +
  xlim(0, 100) +
  ylim(0, 0.075)

#--------------------------------------
# Make plots for each order
#--------------------------------------
rodent <-
  base +
  geom_density(data = ds_rodent,
               alpha = 0.5, fill = cbPalette[2], colour = cbPalette[2]) +
  add_phylopic(img = img_mouse, alpha = 1, x = 10, y = 0.07, ysize = 13) +
  remove_x

bat <-
  base +
  geom_density(data = ds_bat,
               alpha = 0.5, fill = cbPalette[3], colour = cbPalette[3]) +
  add_phylopic(img = img_bat, alpha = 1, x = 10, y = 0.07, ysize = 15) +
  remove_x +
  remove_y

sor <-
  base +
  geom_density(data = ds_sor,
               alpha = 0.5, fill = cbPalette[4], colour = cbPalette[4]) +
  add_phylopic(img = img_shrew, alpha = 1, x = 10, y = 0.07, ysize = 12) +
  remove_x +
  remove_y

carn <-
  base +
  geom_density(data = ds_carn,
               alpha = 0.5, fill = cbPalette[5], colour = cbPalette[5]) +
  add_phylopic(img = img_tiger, alpha = 1, x = 11, y = 0.07, ysize = 10)

primate <-
  base +
  geom_density(data = ds_primate,
               alpha = 0.5, fill = cbPalette[8], colour = cbPalette[8]) +
  add_phylopic(img = img_monkey, alpha = 1, x = 10, y = 0.07, ysize = 15) +
  remove_y +
  xlab("% female specimens")

artio <-
  base +
  geom_density(data = ds_artio,
               alpha = 0.5, fill = cbPalette[7], colour = cbPalette[7]) +
  add_phylopic(img = img_deer, alpha = 1, x = 10, y = 0.07, ysize = 20) +
  remove_y

(rodent | bat | sor)/(carn|primate|artio)

#ggsave("figures/orders-density-mammals-six.png", height = 100, units = "mm")
