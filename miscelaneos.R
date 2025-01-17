### para muestrear de semillas de Thespesia populnea
# Load the data
data <- read.csv("semilla_thepol-masa-long.csv")

# Load the dplyr package for easier data manipulation
library(dplyr)

# Sample 20 rows for each year
semillas <- data %>%
  group_by(year) %>%                # Group data by the "year" column
  sample_n(20) %>%                  # Sample 20 rows from each group
  ungroup()                         # Remove grouping after sampling

# Save the sampled data to a CSV file if needed
write.csv(semillas, "semillas-sample.csv", row.names = FALSE)

---
  


  