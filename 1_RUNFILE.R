# Run this file to recreate analyses
library(targets)
library(renv)

renv::install()

tar_make()

tar_visnetwork()
