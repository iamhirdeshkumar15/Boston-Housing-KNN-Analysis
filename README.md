# KNN Analysis on Boston Housing Dataset

This repository demonstrates the application of K-Nearest Neighbors (KNN) algorithm on the Boston Housing dataset using R programming. The objective is to predict housing prices using normalized features and evaluate the model's accuracy.

## Dataset
The Boston Housing dataset is sourced from the `MASS` package in R. It contains information about housing in Boston, including features such as:
- Crime rate
- Residential land zone
- Average number of rooms per dwelling
- Distance to employment centers, and more.

## Key Steps
1. **Data Loading:** Loaded the Boston Housing dataset from the `MASS` package.
2. **Data Preprocessing:** Checked for missing values and normalized the dataset.
3. **Data Splitting:** Split the dataset into training and testing sets (70-30 split).
4. **Model Implementation:** Implemented the KNN algorithm with `k = 3`.
5. **Evaluation:** Evaluated the model using a confusion matrix and calculated accuracy.

## Requirements
To replicate the analysis, you will need:
- R (version 4.0 or later)
- Packages: `MASS`, `caret`, `class`

Install required libraries using the following commands:
```R
install.packages("MASS")
install.packages("caret")
install.packages("class")
