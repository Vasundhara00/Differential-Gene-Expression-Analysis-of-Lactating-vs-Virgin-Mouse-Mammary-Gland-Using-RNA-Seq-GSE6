# RNAseq-BreastCancer-DEG

This repository contains code, data, and visualizations from an RNA-seq analysis project focused on identifying differentially expressed genes (DEGs) in breast tissue samples from pregnant and virgin mice.

## 📌 Project Summary

The goal of this project is to explore transcriptomic changes in mammary tissue associated with pregnancy, by identifying and visualizing the top differentially expressed genes using RNA-seq data.

## 📂 Repository Structure

RNAseq-BreastCancer-DEG/
├── data/ # Raw and processed input data (e.g., count matrix, metadata) (Due to GitHub's preview limitations, the CSV file in data/ may not be viewable directly on GitHub, but it is downloadable)
├── scripts/ # R scripts used for analysis and visualization
├── figures/ # Output plots (e.g., heatmaps, volcano plots)
├── README.md # Project description and guide


## 📈 Key Features

- Normalization and transformation of RNA-seq count data using DESeq2
- Identification of DEGs using adjusted p-values (padj)
- Heatmap of top 20 DEGs using hierarchical clustering
- Color-coded grouping of sample conditions (pregnant vs virgin)

## 🔧 Tools & Packages

- R
- DESeq2
- pheatmap
- dplyr, tidyr, ggplot2

## 📊 Example Output

![Top 20 DEGs Heatmap](figures/heatmap_top20_DEGs.png)

## 🧪 Sample Groups

- **Virgin:** Samples from virgin mice (n=4)
- **Pregnant:** Samples from pregnant mice (n=6)

## ✍️ Author

**Vasundhara Renukdas**  
[LinkedIn](https://www.linkedin.com/in/vasundhara2205) | MSc Biotechnology, MIT-WPU

