# Clean the data ----
clean_data = function(data) {
  data |> 
    # Filter out imprecise location obs
    filter(coordinateUncertaintyInMeters < 1000) |> 
    # We only want fungarium vs community sci, not DNA
    filter(basisOfRecord != "MATERIAL_SAMPLE")
}

# Summarise how many of each category ----
count_data = function(data){
  data |> 
  group_by(phylum, basisOfRecord) |> 
  tally()
}

# Visualise the results ----
visualise_data = function(data){
  ggplot(data,
         aes(x = phylum, y = n, fill = basisOfRecord)) +
    geom_bar(position="stack", stat="identity") +
    scale_fill_manual(values = c("lightgreen", "brown4")) +
    theme_bw()
}