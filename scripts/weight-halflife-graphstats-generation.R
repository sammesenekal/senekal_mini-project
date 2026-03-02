#Now that we have created the Theoph_wthl (Theophilline weight and half-life) data subset, we can create the graph for the manuscript:
##Load required packages:
library(ggplot2)
library(here)
library(tidyverse)
library(tidyr)
library(dplyr)

##Read in the dataset:

theoph_wthf <- read.csv(here::here("data", "data_processed","Theoph_wthl.csv"))

##Produce the graph:

wt_hl_plot <- ggplot(data = theoph_wthf, aes(x= Wt, y = Half_Life)) +
  geom_point(color = "darkgreen", size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "blue", linetype = "dashed") +
  labs(
    x = "Weight (kg)",
    y = "Half-Life (Hours)"
  ) +
  theme_minimal()

print(wt_hl_plot)

#We need a test to show if this trend line is statistically significant
##Simple Linear Regression--this will predict if weight significantly predicts Half-life

stat_model <- lm(Half_Life~Wt, data = theoph_wthf)

summary(stat_model)

#p-value = 0.4041 -- NOT statistically significant! Greater than 0.05
#Regression line equation: y = mx + B; Half-life = 0.061(Weight) + 3.996
#R2 = 0.07

#Save graph into figs directory:
ggsave(
  filename = here::here("figs", "weightvshalflife.png"),
  plot = wt_hl_plot,
  width = 8,
  height = 6,
  units = "in",
  dpi = 300
)
