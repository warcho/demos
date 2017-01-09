# Prep self-harm data

# Set up
library(dplyr)
setwd('~/Documents/info-498c/demos/gbd/ylls')

# Prep self-harm data
self.harm.deaths <- read.csv('data/raw/self-harm-deaths.csv')
self.harm.ylls <- read.csv('data/raw/self-harm-ylls.csv')

self.harm.data <- rbind(self.harm.deaths, self.harm.ylls) %>% 
  filter(Location == "Colombia")

write.csv(self.harm.data, 'data/prepped/self-harm.csv', row.names = FALSE)