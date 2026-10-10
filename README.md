# Project Context — SpendWise / Expense Intelligence

## 1. Project Overview

I am developing a **Personal Expense Intelligence System** designed to help users manage monthly finances, analyze spending habits, estimate the minimum money needed for essential living expenses, identify unnecessary spending, and discover opportunities to save more money.

The project will continuously evolve with additional features and technologies until it is fully completed.

## 2. Current Technology Plan

- MySQL — database management
- Python — application logic and backend
- Pandas — expense data analysis
- NumPy — numerical calculations and projections
- HTML — frontend structure
- CSS — frontend styling

More technologies may be added as the project develops.

## 3. Database Details

Database name: `expense_intelligence`

There are six tables:

1. `categories` — expense categories and their types
2. `expenses` — individual expense transactions
3. `income` — income records
4. `monthly_summary` — monthly financial summaries
5. `monthly_budget` — planned and actual category spending
6. `recommendations` — personalized saving recommendations

There is **no user table** because the initial project is designed for a single user.

The `expenses`, `monthly_budget`, and `recommendations` tables reference `categories` through foreign keys where applicable.

## 4. GitHub Progress

GitHub repository: `https://github.com/Sadiqshaik455/expense-intelligence`

Repository visibility: Public.

Repository description:

"A Personal Expense Intelligence System designed to help users manage monthly finances, analyze spending habits, estimate essential living costs, identify unnecessary expenses, and discover opportunities to save more money. The project will continuously evolve with new features and technologies throughout development."

The following five SQL files have been uploaded to the repository root:

- `01_create_database.sql`
- `02_create_tables.sql`
- `03_insert_categories.sql`
- `04_sample_data.sql`
- `05_analysis_queries.sql`

A `database/` folder also exists, currently containing a `README.md` file.

The latest commit message is:
`Add MySQL schema, sample data and analysis queries`

## 5. Completed Work

- Created the MySQL database and table definitions.
- Prepared the category insertion script.
- Prepared fictional sample income and expense records.
- Prepared SQL analysis queries.
- Saved all five SQL files locally.
- Uploaded all five files to the public GitHub repository.
- Added the repository description.

## 6. Current Status

The repository is visible on GitHub. The five SQL files are currently in the repository root instead of inside the `database/` folder. We plan to organize the files more cleanly.

The root `README.md` is still basic and needs professional documentation.

## 7. Next Steps

Proceed step by step, without skipping instructions:

1. Improve the root `README.md` with the project purpose, features, technologies, database tables, relationships, setup instructions, and development roadmap.
2. Organize the SQL files inside `database/`.
3. Test the SQL scripts in MySQL Workbench and verify all six tables and their relationships.
4. Add SQL analysis queries and test their results.
5. Connect Python to MySQL.
6. Use Pandas and NumPy for expense analysis and projections.
7. Develop the complete responsive HTML/CSS frontend, including:
   - Landing page
   - Dashboard
   - Add expense
   - Transaction history
   - Monthly report
   - Budget planner
   - Savings recommendations
8. Connect the frontend to the backend.
9. Test, document, and prepare the completed project for a resume.

## 8. Instructions for the Assistant

Act as a step-by-step project mentor. Give exact instructions for the current stage, including which GitHub button to click or which MySQL file to edit. Do not jump ahead before the current step is completed. Explain concepts clearly, and avoid giving code when only instructions or database table designs are requested. Keep the project beginner-friendly, organized, and professional.
