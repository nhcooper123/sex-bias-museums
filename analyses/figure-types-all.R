# Figures for all and type specimens
# Natalie Cooper 
# Dec 2018
# This runs on "specimens" = all specimen data
#----------------------------------------------
# Create datasets for plots
#----------------------------------------------
ds_all <-
  specimens %>%
  filter(!is.na(sex)) %>%
  add_count(class, name = "n") %>%
  add_count(class, sex, name = "nn") %>%
  select(class, sex, n, nn) %>%
  distinct() %>%
  mutate(percent = round(nn/n*100, 2))

# Just focus on types
# Exclude non-types and non-name-bearing types
ds_type <-
  specimens %>%
  filter(!is.na(sex) & type == "Type") %>%
  add_count(class, type, name = "n") %>%
  add_count(class, sex, type, name = "nn") %>%
  select(class, sex, type, n, nn) %>%
  distinct() %>%
  mutate(percent = round(nn/n*100, 2))

#---------------------------------------------------------------
# Make the plots
#---------------------------------------------------------------
plot_all <-
  ggplot(ds_all, aes(y = percent, x = class, fill = sex)) +
  geom_col(alpha = 0.8, position = position_stack(reverse = TRUE)) +
  ylab("% specimens") +
  xlab("") +
  geom_abline(slope = 0, intercept = 50, linetype = 2) +
  theme_bw(base_size = 14) +
  scale_fill_manual(values = c(cbPalette[4], cbPalette[3]),
                    name = "Sex",
                    breaks = c("f", "m"),
                    labels = c("Female", "Male")) +
  ylim(0, 101)

plot_types <-
  ggplot(ds_type, aes(y = percent, x = class, fill = sex)) +
  geom_col(alpha = 0.8, position = position_stack(reverse = TRUE)) +
  ylab("% type specimens") +
  xlab("") +
  geom_abline(slope = 0, intercept = 50, linetype = 2) +
  theme_bw(base_size = 14) +
  scale_fill_manual(values = c(cbPalette[4], cbPalette[3]),
                    name = "Sex",
                    breaks = c("f", "m"),
                    labels = c("Female", "Male")) +
  ylim(0, 101)

#---------------
# Plot and save
#---------------
plot_all + plot_types
#ggsave(here("figures/types-all.png"))
