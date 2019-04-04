# Make tables for supplemental materials

#-----------------------  
# Preliminaries

# Load libraries
library(tidyverse)
library(patchwork) # from GitHub
library(png)
library(knitr)
library(broom)
library(here)
library(xtable)

# Read in all the specimen data
specimens <- read_csv(here("data/all-specimen-data.csv")) 
#---------------------------------------------------------  
# Table A2
#---------------------------------------------------------  
## Which are the worst contenders?
### Birds
worstb <-
  specimens %>%
  filter(!is.na(sex)) %>%
  add_count(class, binomial, name = "n") %>%
  add_count(class, binomial, sex, name = "nn") %>%
  select(class, order, binomial, sex, n, nn) %>%
  distinct() %>%
  mutate(percent = round(nn/n*100, 2)) %>%
  filter(sex == "Female" & n >= 100) %>%
  arrange(class, percent) %>%
  filter(percent < 25 | percent > 75) %>%
  select(class, order, binomial, n, percent)

table_percents <-
  xtable(worstb,
         caption = "Species of birds and mammals with the most extreme sex ratios
                  in our data, i.e. species with fewer than 25% female or fewer 
                  than 25% male specimens, for species with at least 100 specimens
                  in total. Species with  fewer than 25% male specimens are highlighted 
                  in bold.",
         label = "table-percents",
         align = c("l", "l", "l", ">{\\itshape}l", "c", "c"),
         digits = 2)

colnames(table_percents) <- c("class", "order", "binomial", "n specimens", "% female")

print(table_percents, file = here("manuscript/figures/table-percents.tex"), 
      include.rownames = FALSE, tabular.environment = 'longtable',
      floating = FALSE, caption.placement = "top", include.colnames = TRUE,
      sanatize.colnames.function = c("bold.cells"))

#---------------------------------------------------------  
# Table S1
#---------------------------------------------------------  
# Orders summary
ds_orders <-
  specimens %>%
  filter(!is.na(sex)) %>%
  group_by(class) %>%
  add_count(binomial, name = "n") %>%
  add_count(binomial, sex, name = "nn") %>%
  filter(n >= 100 & sex == "Female") %>%
  rename(female = nn) %>%
  mutate(male = n - female) %>%
  select(class, order, binomial, n, female, male) %>%
  mutate(percentf = (female/n) * 100) %>%
  distinct()

sum_orders <-
  ds_orders %>%
  group_by(class, order) %>%
  summarise('n species' = length(unique(binomial)),
            'n specimens' = sum(n),
            '% female' = round(median(percentf),2))

table_orders <-
  xtable(sum_orders,
         caption = "Median percentages of female specimens within species with at least 
                   100 specimens, or each order of birds and mammals. 
                   Orders with median percentages of female specimens of over 50% are in bold.",
         label = "table-orders",
         align = c("l", "l", "l", "c", "c", "c"),
         digits = 2)

print(table_orders, file = here("manuscript/figures/table-orders.tex"), 
      include.rownames = FALSE, tabular.environment = 'longtable',
      floating = FALSE, caption.placement = "top", include.colnames = TRUE,
      sanatize.colnames.function = c("bold.cells"))
