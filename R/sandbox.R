library(tidyverse)
library(tidylog)

fungi_clean = fungi_raw |> 
  # Filter out imprecise location obs
  filter(coordinateUncertaintyInMeters < 1000)

hist(fungi_raw$coordinateUncertaintyInMeters, breaks = 100)
hist(fungi_clean$coordinateUncertaintyInMeters, breaks = 100)
