install.packages("readxl")
library(readxl)

# Load count data from Excel
count_data <- read_excel("C:/Users/dell/OneDrive/Desktop/r studio files/RNAseq-BreastCancer-DEG/Raw data/raw count matrix.xlsx")

# Set first column (gene IDs) as rownames
count_data <- as.data.frame(count_data)
rownames(count_data) <- count_data[, 1]
count_data <- count_data[, -1]  # remove gene ID column since it's now rownames

# Remove 'Length' column if present
count_data <- count_data[, -1]

# Check sample names
colnames(count_data)

# Create metadata
sample_info <- data.frame(
  row.names = colnames(count_data),
  condition = c(rep("pregnant", 6), rep("virgin", 6))
)

# View metadata
print(sample_info)

write.csv(sample_info, "sample_metadata.csv", row.names = TRUE)

getwd()

setwd("C:/Users/dell/OneDrive/Desktop/r studio files")

