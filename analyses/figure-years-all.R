# Figure for years
# Natalie Cooper
# Feb 2019
#------------------------------------
# Summarise by species by year
# Extract numbers of males and females
# proportions, and totals
# Remove species with < 50 specimens
ds_years <-
  specimens %>%
  filter(!is.na(sex)) %>%
  filter(!is.na(year)) %>%
  group_by(class) %>%
  add_count(binomial, year, name = "n") %>%
  add_count(binomial, year, sex, name = "nn") %>%
  filter(n >= 50 & sex == "Female") %>%
  rename(female = nn) %>%
  mutate(male = n - female) %>%
  select(class, order, binomial, year, decade, n, female, male) %>%
  mutate(percentf = (female/n) * 100) %>%
  distinct()

#-------------------------------------------------------------------
# Plot % female by year
plot_year <-   
ggplot(ds_years, aes(x = year, y = percentf/100, colour = class)) +
  geom_point(alpha = 0.8, size = 0.5) +
  geom_smooth(method = "glm",
              method.args = list(family = "quasibinomial"), 
              col = "darkgrey", size = 0.5) +
  geom_abline(slope = 0, intercept = 0.5, linetype = 2) +
  theme_bw(base_size = 14) +
  ylab("% female specimens") +
  xlab("Collection year") +
  #ylim(0, 1) +
  scale_colour_manual(values = c(cbPalette[c(2:5)])) +
  scale_y_continuous(labels = c(0,25,50,75,100)) +
  xlim(1880, 2010) +
  theme(legend.position = "none",
        strip.background = element_rect(fill="white")) +
  facet_wrap(~class, ncol = 1)

plot_year
#ggsave("figures/years-all.png", width = 80, units = "mm")
