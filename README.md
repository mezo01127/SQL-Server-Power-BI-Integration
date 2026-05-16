# Data Camp Management & Analytics System 📊🎓

An end-to-end data engineering and business intelligence project that integrates an SQL Server relational database with an interactive Power BI dashboard to manage and analyze training camp operations.

## 🚀 Key Features
* **Relational Database Design:** Built a structured schema (`Data_Summer_Camp_3`) in SQL Server to efficiently manage data for trainees, lecturers, courses, and enrollments.
* **Advanced SQL Querying (DQL):** Implemented optimized queries involving data transformation, text concatenations, and conditional filters to retrieve clean operational insights.
* **Power BI Dashboard Integration:** Connected Power BI directly to the SQL database to ingest, model, and visualize training metrics.
* **Data Modeling:** Established a robust schema architecture within Power BI to support interactive filtering, automated slicers, and seamless visual cross-filtering.

## 🛠️ Tech Stack & Tools
* **Database Engine:** Microsoft SQL Server (T-SQL)
* **BI & Analytics Platform:** Microsoft Power BI Desktop
* **Data Transformation:** Power Query & SQL View Logic

## 📊 Database Architecture & Schema
The relational database consists of the following primary tables:
* `trainee`: Stores trainee demographics and identification keys.
* `lectures`: Contains instructor profiles, specialties (e.g., Excel, Power BI, SQL, Python), and contact info.
* `course`: Maps course information to the respective instructors.
* `trainees_courses`: A junction table managing many-to-many relationships between trainees and their enrolled courses.

## 📈 Project Workflow
1. **DDL & DML Implementation:** Created tables, defined primary/foreign key constraints, and populated records via SQL scripts.
2. **Data Querying:** Formulated T-SQL queries to filter specific lecturer specializations and format tracking reports.
3. **ETL & Ingestion:** Loaded the relational SQL data into Power BI, ensuring proper data types and relations.
4. **Dashboard Layout Design:** Developed a polished visual hierarchy featuring performance cards, structured tables, and trend charts for camp coordinators.
