# Clean the data ----
clean_data = function(data) {
  data |> 
    # Filter out imprecise location obs
    filter(coordinateUncertaintyInMeters < 1000)
}
