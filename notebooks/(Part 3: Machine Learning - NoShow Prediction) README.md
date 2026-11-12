## Overview
This part of the NoShowGuard project focuses on developing machine learning models to predict outpatient appointment no-shows. Using the cleaned appointment dataset from Part 1, multiple classification algorithms are trained and evaluated to identify appointments with a higher probability of non-attendance.

The objective is to support clinics in proactively identifying high-risk appointments and improving patient follow-up strategies.

## Objectives
- Prepare features suitable for machine learning.
- Encode categorical variables and split the dataset into training and testing subsets.
- Train Logistic Regression, Decision Tree, and Random Forest classifiers.
- Evaluate model performance using classification metrics.
- Tune Random Forest hyperparameters using GridSearchCV.
- Generate appointment-level no-show risk scores.
- Export test predictions for further analysis.

## Workflow

### 3.1 Dataset Loading
- Loaded the cleaned appointment dataset generated in Part 1.
- Verified dataset dimensions, data types, and missing values.
- Prepared the dataset for model development.

### 3.2 Feature Selection and Train-Test Split
- Selected relevant appointment attributes for prediction.
- Excluded identifiers and target-related information to prevent data leakage.
- Encoded categorical variables using one-hot encoding.
- Converted reminder status into numerical values.
- Split the dataset into training and testing subsets using an 80:20 ratio.
- Applied stratified sampling to maintain target-class proportions.
- Used random_state=42 for reproducibility.

### 3.3 Logistic Regression
- Trained Logistic Regression as the baseline classification model.
- Standardised numerical features using StandardScaler.
- Generated class predictions and no-show probabilities.
- Evaluated the model using Accuracy, Precision, Recall, F1-score, and ROC-AUC.
- Visualised classification performance using a confusion matrix.

### 3.4 Decision Tree and Random Forest
- Trained Decision Tree and Random Forest classifiers.
- Used class balancing in Random Forest to address class imbalance.
- Compared the performance of all three models.
- Evaluated their ability to identify actual no-show appointments.

### 3.5 Hyperparameter Tuning and Risk Score Generation
- Optimised Random Forest using GridSearchCV.
- Used cross-validation F1-score to select model parameters.
- Evaluated the tuned model on the held-out test dataset.
- Generated predicted no-show probabilities for test appointments.
- Assigned Low, Medium, and High risk categories.
- Exported risk scores to `test_risk_scores.csv`.

## Dataset
The machine learning pipeline uses the cleaned appointment dataset generated in Part 1.

- Total records: 990 appointments
- Features: Numerical and categorical appointment attributes
- Target variable: `no_show`
- Target classes:
  - 0 – Appointment attended
  - 1 – Appointment not attended

The dataset was divided into training and testing subsets using an 80:20 stratified split.

## Model Evaluation
Models were evaluated using the following metrics:

- **Accuracy:** Overall correctness of predictions.
- **Precision:** Proportion of predicted no-shows that were actual no-shows.
- **Recall:** Proportion of actual no-shows successfully identified.
- **F1-score:** Balance between Precision and Recall.
- **ROC-AUC:** Ability to distinguish between attended and missed appointments.

Recall and F1-score are particularly relevant because the dataset contains fewer no-show appointments than attended appointments.

### Model Comparison Results

The following results were obtained during the initial model comparison:

**Logistic Regression**
- Accuracy: 0.7980
- Precision: 0.5769
- Recall: 0.3409
- F1-score: 0.4286
- ROC-AUC: 0.7528

**Decision Tree**
- Accuracy: 0.7980
- Precision: 0.6111
- Recall: 0.2500
- F1-score: 0.3548
- ROC-AUC: 0.6938

**Random Forest**
- Accuracy: 0.7727
- Precision: 0.4878
- Recall: 0.4545
- F1-score: 0.4706
- ROC-AUC: 0.7034

**Key Observation**
- Logistic Regression achieved the highest Accuracy and ROC-AUC.
- Decision Tree achieved the highest Precision.
- Random Forest achieved the highest Recall and F1-score.
- Random Forest demonstrated better performance in identifying actual no-show appointments among the three initial models.

## Generated Outputs

- `test_risk_scores.csv` – Appointment-level predicted no-show probabilities, actual outcomes, predicted outcomes, and risk categories for the test dataset.

## Technologies Used
- Python
- Pandas
- NumPy
- Scikit-learn
- Matplotlib
- Seaborn
- Google Colab

## Reproducibility
- Random seed: 42
- Train-test ratio: 80:20
- Stratified train-test splitting
- Cross-validation-based hyperparameter tuning

## Conclusion
Part 3 establishes a machine learning pipeline for appointment no-show prediction using Logistic Regression, Decision Tree, and Random Forest. The initial comparison indicates that Random Forest achieved the highest Recall and F1-score among the three models, making it a promising candidate for identifying appointments at risk of non-attendance.

The tuned model and generated risk scores provide a foundation for proactive patient follow-up and further analysis in the subsequent project stages.
