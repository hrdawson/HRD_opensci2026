# Clean the data ----
clean_data = function(data) {
  data |> 
    # Filter out imprecise location obs
    filter(coordinateUncertaintyInMeters < 1000) |> 
    # We only want fungarium vs community sci, not DNA
    filter(basisOfRecord != "MATERIAL_SAMPLE")
}
