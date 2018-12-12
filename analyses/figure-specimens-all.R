# Figures for number of specimens
# Natalie Cooper 
# Dec 2018
# This runs on "specimens" = all specimen data
#------------------------
# Summarise by species
# Extract numbers of males and females
# proportions, and totals
ds_females <-
  specimens %>%
  filter(!is.na(sex)) %>%
  group_by(class) %>%
  add_count(binomial) %>%
  add_count(binomial, sex) %>%
  select(class, binomial, sex, n, nn) %>%
  distinct() %>%
  mutate(percent = round(nn/n*100, 2)) %>%
  filter(sex == "Female")

#-------------------------------------------------------------------
# Histograms of % female and number of specimens

hist1 <-
  ggplot(ds_females, aes(x = percent)) +
  geom_histogram(alpha = 0.8, bins = 30) +
  theme_bw(base_size = 14) +
  xlab("% female specimens") +
  xlim(0, 100) +
  geom_vline(xintercept = 50, linetype = 2) +
  facet_wrap(~class)

hist2 <- 
  ggplot(ds_females, aes(x = log(n))) +
  geom_histogram(alpha = 0.3, bins = 20) +
  theme_bw(base_size = 14) +
  xlab("log(number of specimens)") +
  facet_wrap(~class)

hist1 / hist2
#ggsave("figures/histogram-specimen-counts.png")
#-------------------------------------------------------------------
# Plot % female by number of specimens

# Plot - note this excludes one species with >15000 specimens!
all <- 
  ggplot(ds_females, aes(x = n, y = percent)) +
  geom_hex(bins = 20, alpha = 0.8) +
  geom_abline(slope = 0, intercept = 50, linetype = 2) +
  theme_bw(base_size = 14) +
  ylab("% female specimens") +
  xlab("Number of specimens") +
  ylim(0, 100) +
  xlim(0, 10000) +
  scale_fill_gradientn(colours = cbPalette[3:5], na.value = "transparent") +
  theme(legend.title = element_blank()) +
  facet_wrap(~class, ncol = 1)

all
#ggsave("figures/specimens-numbers-all.png")