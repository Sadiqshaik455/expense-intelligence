# MySQL Database — Expense Intelligence

## 1. Overview

This directory contains the MySQL database scripts for the **Personal Expense Intelligence System**.

The database is designed to store expense transactions, income records, expense categories, monthly budgets, financial summaries, and savings recommendations.

Its purpose is to provide structured financial data for analyzing spending habits, estimating essential living costs, comparing monthly expenses, and identifying potential savings opportunities.

## 2. Database Information

- **Database Name:** `expense_intelligence`
- **Database Management System:** MySQL
- **Number of Tables:** 6
- **Architecture:** Single-user database without a user table

## 3. Database Tables

| Table | Purpose |
|---|---|
| `categories` | Stores expense categories and their types |
| `expenses` | Stores individual expense transactions |
| `income` | Stores income records |
| `monthly_summary` | Stores monthly financial summaries |
| `monthly_budget` | Stores planned and actual category budgets |
| `recommendations` | Stores spending-reduction and savings recommendations |

## 4. Table Relationships

- One category can be associated with multiple expenses.
- One category can have multiple monthly budget records.
- One category can be associated with multiple recommendations.
- The `expenses`, `monthly_budget`, and `recommendations` tables reference `categories` through foreign keys where applicable.
- Income and monthly summaries are stored independently in this initial single-user design.

## 5. SQL Files

| File | Description |
|---|---|
| `01_create_database.sql` | Creates the `expense_intelligence` database |
| `02_create_tables.sql` | Creates the six database tables and their relationships |
| `03_insert_categories.sql` | Inserts the initial expense categories |
| `04_sample_data.sql` | Inserts fictional sample income and expenses |
| `05_analysis_queries.sql` | Contains SQL queries for financial analysis |

## 6. Execution Order

Run the SQL scripts in the following order using MySQL Workbench:

1. `01_create_database.sql`
2. `02_create_tables.sql`
3. `03_insert_categories.sql`
4. `04_sample_data.sql`
5. `05_analysis_queries.sql`

Execute the sample-data script only once on a fresh database to avoid duplicate records.

## 7. Analysis Capabilities

The database supports queries for:

- Total income and expenses
- Remaining money
- Category-wise spending
- Essential versus non-essential expenses
- Highest-spending categories
- Daily and monthly expense totals
- Monthly budget comparisons

More advanced calculations, including spending forecasts, survival-budget estimates, and personalized savings recommendations, will be developed as the project progresses.

## 8. Future Development

This database will be integrated with Python, Pandas, and NumPy for financial analysis and later connected to a responsive HTML/CSS frontend.

Additional technologies and features may be introduced throughout development.

## 9. Sample Data and Privacy

The included sample records are fictional and intended for testing and demonstration. No real financial records or database credentials should be committed to this public repository.

---

Part of the **Personal Expense Intelligence System** project. The database schema and features will evolve as development continues.
