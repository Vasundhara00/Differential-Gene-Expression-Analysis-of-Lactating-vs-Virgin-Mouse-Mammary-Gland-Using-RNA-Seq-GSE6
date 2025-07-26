🧬 RNA-Seq Differential Expression Analysis (GSE60450)
This project performs a differential gene expression (DEG) analysis on RNA-Seq data from mouse mammary gland tissues comparing pregnant and virgin samples. The dataset was sourced from the GEO database (GSE60450), and analysis was conducted using DESeq2 in R.

📌 Project Goals
To identify differentially expressed genes between pregnant and virgin mouse mammary tissues.

To visualize gene expression changes using volcano plots and heatmaps.

To apply and demonstrate RNA-Seq workflows using real NGS data.

To build a portfolio-worthy bioinformatics project using R and DESeq2.

📂 Dataset
GEO Accession: GSE60450

Organism: Mus musculus (mouse)

Samples: 12 total (6 pregnant, 6 virgin)

Input: Gene-wise raw count matrix

Metadata: Manually created in R to define conditions (pregnant vs virgin)

⚙️ Tools & Packages
R

DESeq2

ggplot2

pheatmap

readxl

🧪 Methodology
Data Import: Raw count matrix was loaded and cleaned.

Metadata Creation: Sample metadata created manually to define sample conditions.

DEG Analysis: DESeq2 was used to identify differentially expressed genes.

Visualization:

Volcano Plot to highlight significant DEGs.

Heatmap of top 20 DEGs using normalized counts.

📈 Results
Total genes analyzed: ~15,000

Significantly differentially expressed genes (padj < 0.05): [Count from your CSV]

Notable gene expression patterns between reproductive conditions were observed.

📁 Repository Structure

RNAseq-MouseLactation-DEG/
├── data/
│   ├── GSE60450_Lactation-GenewiseCounts.txt
│   └── sample_metadata.csv
├── results/
│   ├── volcano_plot.png
│   ├── heatmap.png
│   └── DEGs_GSE60450.csv
├── scripts/
│   └── differential_expression.R
├── README.md
📚 References
GEO Dataset: GSE60450

Love, M. I., Huber, W., & Anders, S. (2014). Moderated estimation of fold change and dispersion for RNA-seq data with DESeq2. Genome biology, 15(12), 550.

🙋‍♀️ Author
Vasundhara Renukdas

