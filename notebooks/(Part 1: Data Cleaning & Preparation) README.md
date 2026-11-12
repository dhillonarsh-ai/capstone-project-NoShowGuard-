**Overview**

Part 1 focuses on transforming raw appointment and clinic datasets into clean, validated, and analysis-ready data. This stage establishes the foundation for SQL-based analysis, machine learning model development, and AI-assisted follow-up review.

The workflow combines Python's built-in CSV and JSON handling, Pandas data manipulation, NumPy statistical analysis, and external API integration.

**Objectives**

- Understand the structure and quality of raw appointment data.

- Identify and handle invalid values, missing data, and duplicate records.

- Standardise categorical and date fields.

- Perform statistical analysis and feature engineering.

- Enrich clinic records using external weather data.

- Prepare validated datasets and SQL loading scripts.

**Workflow**

**1.1 – CSV Data Handling & Initial Validation**

- Read appointment records using Python's built-in csv module.

- Convert numerical fields into appropriate data types.

- Validate records using exception handling.

- Separate accepted and rejected records.

- Export rejected records into JSON format.

**1.2: Data Exploration & Initial Cleaning Using Pandas**

- Load and inspect the appointment dataset.

- Analyse dataset dimensions, data types, missing values, and duplicates.

- Remove exact duplicate records.

- Standardise booking channel values.

- Convert booking and appointment dates into datetime format.

- Remove records with missing appointment dates or statuses.

**1.3: Missing Value Imputation & Outlier Treatment**

- Identify invalid ages outside the acceptable range.

- Replace invalid ages with missing values.

- Impute missing age and distance values using median values.

- Detect outliers using the Interquartile Range (IQR) method.

- Cap extreme distance and consultation fee values using NumPy.

- Standardise numerical precision and validate the cleaned data.

**1.4: Feature Engineering & Statistical Analysis**

- Calculate appointment lead days.

- Create a binary no-show variable.

- Extract numerical features using NumPy.

- Calculate feature means.

- Analyse appointments booked more than 14 days in advance.

- Calculate distance Z-scores and identify statistical outliers.

**1.5: External API Integration & Clinic Data Enrichment**

- Integrate the Open-Meteo API using Python's requests library.

- Retrieve hourly temperature information using clinic coordinates.

- Enrich clinic records with temperature data.

- Implement request timeouts, retries, and exception handling.

- Export the enriched clinic dataset.

**1.6: Final Dataset Preparation & SQL Export**

- Sort appointment records by appointment ID.

- Standardise date formatting.

- Arrange columns in the required order.

- Validate appointment ID uniqueness and missing values.

- Export the cleaned appointment dataset.

- Generate SQL INSERT statements for clinics and appointments.

**Dataset Validation Results**

The final appointment dataset was validated after completing the cleaning and preprocessing workflow.

- **Original appointment records:** 1,020
- **Exact duplicate records removed:** 20
- **Records with invalid appointment dates or missing statuses removed:** 10
- **Final appointment records:** 990
- **Final appointment columns:** 16
- **Unique appointment IDs:** 990
- **Missing values in the final appointment dataset:** 0
- **Total no-show appointments:** 218
- **Overall no-show rate:** 22.0%

The final dataset contains 990 unique appointment records with 16 columns and no missing values, making it ready for subsequent SQL analysis and machine learning development.

**Generated Outputs**

The following files are generated as part of the Part 1 data preparation workflow:

- **`rejected_rows.json`** – Stores appointment records rejected during initial CSV validation due to data type conversion errors.
- **`appointments_clean.csv`** – Contains the final cleaned, validated, and analysis-ready appointment dataset.
- **`clinics_enriched.csv`** – Contains clinic records enriched with temperature information retrieved through the Open-Meteo API.
- **`load_data.sql`** – Contains SQL INSERT statements for loading clinic and appointment records into MySQL.

**Technologies Used**

- Python

- CSV

- JSON

- Pandas

- NumPy

- Requests

- Open-Meteo API

- Google Colab

**Reproducibility**

The notebook contains the implementation, intermediate validation checks, and outputs for each cleaning stage.

To reproduce the workflow:

- Access the raw datasets from the project's data/raw/ directory.

- Open Part1_Data_Cleaning.ipynb in Google Colab.

- Execute the notebook cells sequentially.

- Review validation outputs and generated files.

- Export the processed datasets and SQL script to their respective repository directories.

**Conclusion**

Part 1 establishes a consistent and validated data foundation for the NoShowGuard project. The cleaned appointment records, enriched clinic dataset, and generated SQL script are prepared for database analysis and subsequent machine learning development.
