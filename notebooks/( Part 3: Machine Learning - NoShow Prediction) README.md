# Part 3: Machine Learning - NoShow Prediction

## Overview
This notebook develops machine learning models to predict patient appointment no-shows using the cleaned NoShowGuard dataset. The objective is to identify appointments with a higher probability of being missed and support proactive patient follow-up.

## Objectives
- Prepare features and target variables for machine learning.
- Split the dataset into training and testing sets.
- Train and evaluate Logistic Regression, Decision Tree, and Random Forest models.
- Compare model performance using classification metrics.
- Optimise model performance using cross-validation and hyperparameter tuning.
- Generate appointment-level no-show risk predictions.

## Dataset
The notebook uses the cleaned dataset generated in Part 1: `appointments_clean.csv`.

## Workflow
1. Load and inspect the cleaned dataset.
2. Prepare features and target variable.
3. Perform train-test split.
4. Train a baseline Logistic Regression model.
5. Evaluate Decision Tree and Random Forest models.
6. Perform cross-validation and hyperparameter tuning.
7. Select a model and generate risk predictions.
