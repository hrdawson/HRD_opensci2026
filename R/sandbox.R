library(tidyverse)
library(tidylog)

fungi_clean = fungi_raw |> 
  # Filter out imprecise location obs
  filter(coordinateUncertaintyInMeters < 1000) |> 
  # We only want fungarium vs community sci, not DNA
  filter(basisOfRecord != "MATERIAL_SAMPLE")

hist(fungi_raw$coordinateUncertaintyInMeters, breaks = 100)
hist(fungi_clean$coordinateUncertaintyInMeters, breaks = 100)

names(fungi_clean)

fungi_count = fungi_clean |> 
  group_by(phylum, basisOfRecord) |> 
  tally()

ggplot(fungi_clean,
       aes(x = ))