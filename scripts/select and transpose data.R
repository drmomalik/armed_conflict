# load dataset from project folder "original"

> rawdat <- read.csv(here("original", "maternalmortality.csv"), header = TRUE)

# subset data to include only country name and years 2000-2019

sub_data <- select(rawdat, Country.Name, X2000:X2019)

# transpose year and maternal mortality data using pivot_data and change name to Year and count to MatMort

pivot_data <- pivot_longer(sub_data, cols = starts_with("X"), names_to = "Year", names_prefix = "X", values_to = "MatMort")