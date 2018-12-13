# Figure for years
# Natalie Cooper
# Dec 2018
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
  add_count(binomial, year) %>%
  add_count(binomial, year, sex) %>%
  filter(n >= 50 & sex == "Female") %>%
  rename(female = nn) %>%
  mutate(male = n - female) %>%
  select(class, order, binomial, year, decade, n, female, male) %>%
  mutate(percentf = (female/n) * 100) %>%
  distinct()

#------------------------------------------------------------------
# Fit models so we can add best fit lines

ds_years_birds <- filter(ds_years, class == "Birds")
ds_years_mammals <- filter(ds_years, class == "Mammals")
year_model_birds <- glm(cbind(female, male) ~ year, data = ds_years_birds, family = "binomial")
year_model_mammals <- glm(cbind(female, male) ~ year, data = ds_years_mammals, family = "binomial")

newX <- data.frame(year = seq(from = 1880, to = 2010, length = 100))
newYb <- predict.glm(year_model_birds, type = "response", newdata = newX, se.fit = TRUE)
addTheseb <- data.frame(newX, newYb, class = rep("Birds", 100))

newYm <- predict.glm(year_model_mammals, type = "response", newdata = newX, se.fit = TRUE)
addThesem <- data.frame(newX, newYm)

#-------------------------------------------------------------------
# Plot % female by year
plot_year <-   
ggplot(ds_years, aes(x = year, y = percentf/100, colour = class)) +
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
  xlim(1880, 2010) +
  theme(legend.position = "none",
        strip.background = element_rect(fill="white")) +
  facet_wrap(~class, ncol = 1)

plot_year
#ggsave("figures/years-all.png", width = 80, units = "mm")
