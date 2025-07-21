#installing packages
install.packages("BiocManager")
BiocManager::install("DESeq2")
install.packages("ggplot2")
install.packages("pheatmap")

# Load necessary libraries
library(DESeq2)
library(ggplot2)
library(pheatmap)


# Load count data
count_data <- read.delim("C:/Users/dell/OneDrive/Desktop/Data/GSE60450_Lactation-GenewiseCounts.txt", row.names = 1)

# Remove 'Length' column if present (DESeq2 needs only count columns)
count_data <- count_data[, -1]

# Create sample metadata
sample_info <- data.frame(
  row.names = colnames(count_data),
  condition = c(rep("pregnant", 6), rep("virgin", 6))
)


# Build DESeq2 dataset
dds <- DESeqDataSetFromMatrix(countData = count_data,
                              colData = sample_info,
                              design = ~ condition)
# Run DESeq2 analysis
dds <- DESeq(dds)
res <- results(dds)

# Sort by adjusted p-value
res_ordered <- res[order(res$padj), ]

# View top differentially expressed genes
head(res_ordered)

# Save results to CSV
write.csv(as.data.frame(res_ordered), "DEGs_GSE60450.csv")


#2. Create Visualizations- Volcano Plot (highlighting significant genes)
# Add significance column
res_df <- as.data.frame(res)
res_df$significance <- ifelse(res_df$padj < 0.05 & abs(res_df$log2FoldChange) > 1, "Significant", "Not Significant")


#filter only the valid results before plotting:
res_filtered <- res[!is.na(res$padj), ]

# Volcano plot
ggplot(res_df, aes(x = log2FoldChange, y = -log10(padj), color = significance)) +
  geom_point(alpha = 0.8, size = 1.5) +
  scale_color_manual(values = c("grey", "red")) +
  theme_minimal() +
  labs(title = "Volcano Plot", x = "log2 Fold Change", y = "-log10 Adjusted p-value")


# Heatmap of Top 20 DEGs
# Get top 20 significant DEGs
top_genes <- head(order(res$padj), 20)
normalized_counts <- counts(dds, normalized = TRUE)
top_counts <- normalized_counts[top_genes, ]

#Add sample condition labels:- Helps distinguish tumor vs normal.

vsd <- vst(dds, blind = FALSE)

annotation_col <- data.frame(condition = sample_info$condition)
rownames(annotation_col) <- colnames(vsd)

# Select top 20 genes by adjusted p-value
top_genes <- head(order(res$padj), 20)
top_genes_matrix <- assay(vsd)[top_genes, ]


# Extract just "pregnant" or "virgin" from annotation and number them
groups <- annotation_col$condition
sample_ids <- paste0(groups, "_", ave(as.character(groups), groups, FUN = seq_along))

# Define annotation colors
ann_colors <- list(
  condition = c(virgin = "#F6B1B1", pregnant = "#68D5D8")
)

# Plot heatmap with clean labels
pheatmap(top_genes_matrix,
         annotation_col = annotation_col,
         main = "Top 20 DEGs Heatmap",
         fontsize_row = 6,
         fontsize_col = 8,
         angle_col = 45,
         show_colnames = TRUE,
         labels_col = sample_ids,
         border_color = NA,
         annotation_legend = TRUE)













