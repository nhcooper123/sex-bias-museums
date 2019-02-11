# Figures for SSD
# Natalie Cooper 
# Dec 2018
#------------------------
# Load libraries
library(tidyverse)
library(viridis)
library(patchwork)
library(here)

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
specimens <- read_csv(here("data/all-specimen-data.csv"))

#------------------------
# Extract data required
#------------------------
ds <-
  specimens %>%
  filter(!is.na(sex)) %>%
  group_by(class) %>%
  add_count(binomial) %>%
  add_count(binomial, sex) %>%
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
ds_ssd <- left_join(ds, extra)

#-------------------------------------------------------------
# Plotting
# All species together
#-------------------------------------------------------------
plot_ssd <-   
ggplot(ds_ssd, aes(x = log(SSD), y = percent/100, colour = class)) +
  geom_point(alpha = 0.8, size = 0.5) +
  geom_smooth(method = "glm",
              method.args = list(family = "binomial"), 
              col = "darkgrey", size = 0.5) +
 geom_abline(slope = 0, intercept = 0.5, linetype = 2) +
  theme_bw(base_size = 14) +
  ylab("% female specimens") +
  xlab("Collection year") +
  ylim(0, 1) +
  scale_colour_manual(values = c(cbPalette[c(2:5)])) +
  xlim(-1, 2) +
  theme(legend.position = "none",
        strip.background = element_rect(fill="white")) +
  facet_wrap(~class, ncol = 2)

plot_ssd

ggsave("figures/ssd-all.png")
#-------------------------------------------------------------------
# BIRDS
# Order plots (Top 6 only)
# Passeriformes, Apodiformes, Piciformes
# Psittaciformes, Charadriiformes, Columbiformes
#-------------------------------------------------------------------
# Create new dataframes for each order
ds_pass <- 
  ds_ssd %>%
  filter(order == "Passeriformes")

ds_hum <- 
  ds_ssd %>%
  filter(order == "Apodiformes")

ds_wood <- 
  ds_ssd %>%
  filter(order == "Piciformes")

ds_parrot <- 
  ds_ssd %>%
  filter(order == "Psittaciformes")

ds_shore <- 
  ds_ssd %>%
  filter(order == "Charadriiformes")

ds_pigeon <- 
  ds_ssd %>%
  filter(order == "Columbiformes")

#--------------------------------------
# Make base plot
#--------------------------------------
base <-
  ggplot(ds_ssd, aes(x = log(SSD), y = percent)) +
  geom_hline(yintercept = 50, linetype = 2) +
  geom_vline(xintercept = 0, linetype = 3) +
  theme_bw(base_size = 14) +
  xlab("") +
  ylab("% female") +
  ylim(0, 100) +
  xlim(-0.5, 0.5)

#--------------------------------------
# Make plots for each order
#--------------------------------------
pass <-
  base +
  geom_point(data = ds_pass, colour = cbPalette[2]) +
  add_phylopic(img = img_tit, alpha = 1, x = -0.4, y = 90, ysize = 18) +
  remove_x +
  geom_smooth(data = ds_pass, method = "lm", col = "darkgrey", se = FALSE, size = 0.5)
  #geom_smooth(data = ds_pass, method = "glm", method.args = list(family = "binomial"), col = "darkgrey")


hum <-
  base +
  geom_point(data = ds_hum, colour = cbPalette[3]) +
  add_phylopic(img = img_hummingbird, alpha = 1, x = -0.4, y = 90, ysize = 23) +
  remove_x +
  remove_y +
  geom_smooth(data = ds_hum, method = "lm", col = "darkgrey", se = FALSE, size = 0.5)

wood <-
  base +
  geom_point(data = ds_wood, colour = cbPalette[4]) +
  add_phylopic(img = img_woodpecker, alpha = 1, x = -0.45, y = 90, ysize = 23) +
  remove_x +
  remove_y +
  geom_smooth(data = ds_wood, method = "lm", col = "darkgrey", se = FALSE, size = 0.5)

parrot <-
  base +
  geom_point(data = ds_parrot, colour = cbPalette[5]) +
  add_phylopic(img = img_parrot, alpha = 1, x = -0.45, y = 90, ysize = 23) +
  geom_smooth(data = ds_parrot, method = "lm", col = "darkgrey", se = FALSE, size = 0.5)

shore <-
  base +
  geom_point(data = ds_shore, colour = cbPalette[8]) +
  add_phylopic(img = img_shorebird, alpha = 1, x = -0.4, y = 90, ysize = 20) +
  remove_y +
  xlab("log sexual size dimorphism") +
  geom_smooth(data = ds_shore, method = "lm", col = "darkgrey", se = FALSE, size = 0.5)

pigeon <-
  base +
  geom_point(data = ds_pigeon, colour = cbPalette[7]) +
  add_phylopic(img = img_pigeon, alpha = 1, x = -0.4, y = 90, ysize = 18) +
  remove_y +
  geom_smooth(data = ds_pigeon, method = "lm", col = "darkgrey", se = FALSE, size = 0.5)

(pass | hum | wood)/(parrot | shore | pigeon)

#ggsave("figures/ssd-orders-birds.png", height = 100, units = "mm")
#-------------------------------------------------------------------
# MAMMALS
# Order plots (Top 6 orders only)
# Rodentia, Chiroptera, Soriciomorpha, 
# Carnivora, Primates, Artiodactyla
#-------------------------------------------------------------------
# Create new dataframes for each order
ds_rodent <- 
  ds_ssd %>%
  filter(order == "Rodentia")

ds_bat <- 
  ds_ssd %>%
  filter(order == "Chiroptera")

ds_sor <- 
  ds_ssd %>%
  filter(order == "Soricomorpha")

ds_carn <- 
  ds_ssd %>%
  filter(order == "Carnivora")

ds_primate <- 
  ds_ssd %>%
  filter(order == "Primates")

ds_artio <- 
  ds_ssd %>%
  filter(order == "Artiodactyla")

#--------------------------------------
# Make base plot
#--------------------------------------
base <-
  ggplot(ds_ssd, aes(x = log(SSD), y = percent)) +
  geom_hline(yintercept = 50, linetype = 2) +
  geom_vline(xintercept = 0, linetype = 3) +
  theme_bw(base_size = 14) +
  xlab("") +
  ylab("% female") +
  ylim(0, 100) +
  xlim(-1, 1.5)

#--------------------------------------
# Make plots for each order
#--------------------------------------
rodent <-
  base +
  geom_point(data = ds_rodent, colour = cbPalette[2]) +
  add_phylopic(img = img_mouse, alpha = 1, x = -0.75, y = 93, ysize = 12) +
  remove_x +
  geom_smooth(data = ds_rodent, method = "lm", col = "darkgrey", se = FALSE, size = 0.5)


bat <-
  base +
  geom_point(data = ds_bat, colour = cbPalette[3]) +
  add_phylopic(img = img_bat, alpha = 1, x = -0.75, y = 93, ysize = 14) +
  remove_x +
  remove_y +
  geom_smooth(data = ds_bat, method = "lm", col = "darkgrey", se = FALSE, size = 0.5)


sor <-
  base +
  geom_point(data = ds_sor, colour = cbPalette[4]) +
  add_phylopic(img = img_shrew, alpha = 1, x = -0.75, y = 93, ysize = 11) +
  remove_x +
  remove_y +
  geom_smooth(data = ds_sor, method = "lm", col = "darkgrey", se = FALSE, size = 0.5)


carn <-
  base +
  geom_point(data = ds_carn, colour = cbPalette[5]) +
  add_phylopic(img = img_tiger, alpha = 1, x = -0.75, y = 93, ysize = 10) +
  geom_smooth(data = ds_carn, method = "lm", col = "darkgrey", se = FALSE, size = 0.5)


primate <-
  base +
  geom_point(data = ds_primate, colour = cbPalette[8]) +
  add_phylopic(img = img_monkey, alpha = 1, x = -0.70, y = 93, ysize = 14) +
  remove_y +
  xlab("log sexual size dimorphism") +
  geom_smooth(data = ds_primate, method = "lm", col = "darkgrey", se = FALSE, size = 0.5)


artio <-
  base +
  geom_point(data = ds_artio, colour = cbPalette[7]) +
  add_phylopic(img = img_deer, alpha = 1, x = -0.75, y = 93, ysize = 19) +
  remove_y +
  geom_smooth(data = ds_artio, method = "lm", col = "darkgrey", se = FALSE, size = 0.5)

(rodent | bat | sor)/(carn|primate|artio)

ggsave("figures/ssd-orders-mammals.png", height = 100, units = "mm")
