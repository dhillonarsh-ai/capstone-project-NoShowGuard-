**Overview**

This part focuses on database creation, data loading, and SQL-based analysis of appointment records. The cleaned appointment dataset and enriched clinic information generated in Part 1 are imported into MySQL to perform structured queries and investigate no-show patterns across clinics, booking lead times, and monthly trends. 

This stage uses SQL to transform cleaned data into actionable business insights that support appointment management and subsequent machine learning development.

**Objectives**

- Create and configure the NoShowGuard database in MySQL.

- Define relational tables with appropriate data types and constraints.

- Load cleaned appointment and clinic datasets into MySQL.

- Validate database records and primary key constraints.

- Analyse clinic-level no-show rates.

- Investigate appointment lead-time patterns.

- Examine monthly no-show trends and changes.

- Compare clinic performance within cities against the overall no-show rate.

**Workflow**

**2.1: Database Creation & Data Loading**

- Create the noshowguard database.

- Define the clinics and appointments tables.

- Configure primary keys and foreign key relationships.

- Execute the generated load_data.sql script.

- Validate clinic and appointment record counts.

- Test duplicate appointment ID handling.

**2.2: Clinic-Level No-Show Analysis**

- Join appointment records with clinic information.

- Calculate total appointments and no-show counts.

- Compute clinic-level no-show percentages.

- Apply minimum appointment volume conditions.

- Identify clinics with comparatively higher no-show rates.

**2.3: Appointment Lead-Time Analysis**

- Categorise appointments into lead-time groups.

- Calculate appointment volumes and no-show counts within each group.

- Compare no-show percentages across booking lead-time categories.

- Identify booking intervals associated with higher no-show rates.

**2.4: Monthly No-Show Trend Analysis**

- Aggregate appointment records by month.

- Calculate monthly appointment volumes and no-show percentages.

- Use Common Table Expressions (CTEs) to structure monthly analysis.

- Apply the LAG() window function to calculate month-over-month changes.

- Identify fluctuations in no-show performance over time.

**2.5: City-Level Clinic Ranking**

- Calculate clinic-level no-show rates.

- Rank clinics within their respective cities.

- Apply window functions to compare clinic performance.

- Compare clinic no-show rates against the overall dataset rate.

- Identify clinics performing above or below the overall benchmark.

**Key Findings**

The SQL analysis highlights differences in no-show behaviour across clinics, booking lead-time categories, and months.

- Overall no-show rate: 22.02%

- Highest clinic no-show rate: Gomti Nagar, Lucknow, at 33.3%, with 90 appointments.

- Highest qualifying clinic by appointment volume: Hadapsar, Pune, at 27.3%, with 143 appointments.

- Highest lead-time category: Appointments booked 31 or more days in advance recorded a 60.5% no-show rate.

- Monthly analysis: May recorded a 2.8 percentage-point increase compared with April.

- Clinic benchmarking: Identified clinics performing above and below the overall no-show benchmark within their respective cities.

**SQL Concepts Used**

- Database creation and table definitions

- Primary keys and foreign keys

- SELECT, WHERE, GROUP BY, and HAVING

- Aggregate functions such as COUNT and AVG

- JOIN operations

- Common Table Expressions (CTEs)

- Window functions

- LAG()

- RANK()

- Percentage calculations

- Conditional aggregation

**Technologies Used**

- MySQL 8

- MySQL Workbench

- SQL

- Python-generated SQL scripts

**Conclusion**

Part 2 establishes a relational database foundation and uses SQL to uncover appointment no-show patterns across clinics, lead-time categories, and monthly trends. These findings provide analytical context for the risk prediction models developed in Part 3 and the AI-assisted follow-up review in Part 4.
