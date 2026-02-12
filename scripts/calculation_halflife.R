# Using the processed data, I will log (ln) transform the concentration data for use in half-life analysis, but first I will read in the processed data

theoph_three <- readr::read_csv(here::here("data","data_processed","Theoph_threevar.csv"))

#Then, I will ln transform the concentration into the data frame as a new column

theoph_three$ln_conc <- log(theoph_three$conc)

#I also need to filter for the elimination phase. I can do this by filtering time greater than 10 hours

theoph_elimination <- subset(theoph_three, Time > 10)

#View

head(theoph_elimination[, c("Subject","Time","conc","ln_conc" )])

#Load ggplot2

library(ggplot2)

#Produce a graph where you can see the kinetics for each subject differs

ggplot(data= theoph_elimination, aes(x = Time, y = ln_conc)) +
  geom_point(colour = "blue", size = 2) +
  geom_smooth(method = "lm", se = FALSE, colour = "red") +
  #Need a separate graph for each subject
  facet_wrap(~Subject) +
  labs(
    x = "Time (Hours)",
    y = "Natural Log of Concentration (ln mg/L)"
  ) +
  theme_minimal()

#Calculating Half-life for each patient

library(dplyr)

# First, I will group by Subject and calculate the linear model for each
half_life_results <- theoph_elimination %>%
  group_by(Subject) %>%
  summarise(
    # Extract the slope (coefficient for Time) from the linear model
    Slope = coef(lm(ln_conc ~ Time))[2],
    
    # Calculate Kel (Elimination Rate Constant)
    # Since the slope is negative, I will negate it to get a positive Kel
    Kel = -Slope,
    
    # Calculate Half-Life
    Half_Life = log(2) / Kel
  )

# View the final table
print(half_life_results)

