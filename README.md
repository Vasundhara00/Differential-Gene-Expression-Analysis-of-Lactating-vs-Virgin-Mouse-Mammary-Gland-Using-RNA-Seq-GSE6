# 🧬 RNA-seq Differential Gene Expression Analysis (GSE60450)

This project performs **differential gene expression (DEG) analysis** on mouse mammary gland samples from **pregnant** and **virgin** conditions using RNA-seq data from the publicly available **GSE60450** dataset.



## 🎯 Goal

To identify genes that are significantly upregulated or downregulated between **pregnant** and **virgin** mouse mammary glands, enabling insights into lactation-related transcriptional changes.



## 🧪 Dataset

- **Source:** [GEO Accession GSE60450](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE60450)
- **Samples:** 12 samples (6 pregnant, 6 virgin)
- **File used:** `GSE60450_Lactation-GenewiseCounts.txt` (processed count matrix)



## 🛠️ Tools & Packages

- **R** for analysis
- `DESeq2` – Differential expression analysis  
- `ggplot2` – Volcano plot  
- `pheatmap` – Heatmap of top DEGs  
- `readxl` – For reading Excel files (if applicable)



