
USE expense_intelligence;

-- 1. View all expenses with category names
SELECT
    e.expense_id,
    c.category_name,
    c.category_type,
    e.amount,
    e.description,
    e.expense_date,
    e.payment_method
FROM expenses e
JOIN categories c
    ON e.category_id = c.category_id
ORDER BY e.expense_date;


-- 2. Calculate total expenses
SELECT
    SUM(amount) AS total_expenses
FROM expenses;


-- 3. Calculate total income
SELECT
    SUM(amount) AS total_income
FROM income;


-- 4. Calculate remaining money
SELECT
    (SELECT COALESCE(SUM(amount), 0) FROM income)
    -
    (SELECT COALESCE(SUM(amount), 0) FROM expenses)
    AS remaining_money;


-- 5. Calculate category-wise spending
SELECT
    c.category_name,
    SUM(e.amount) AS total_spent
FROM expenses e
JOIN categories c
    ON e.category_id = c.category_id
GROUP BY c.category_id, c.category_name
ORDER BY total_spent DESC;


-- 6. Compare essential and non-essential expenses
SELECT
    c.category_type,
    SUM(e.amount) AS total_spent
FROM expenses e
JOIN categories c
    ON e.category_id = c.category_id
GROUP BY c.category_type;


-- 7. Find the highest spending category
SELECT
    c.category_name,
    SUM(e.amount) AS total_spent
FROM expenses e
JOIN categories c
    ON e.category_id = c.category_id
GROUP BY c.category_id, c.category_name
ORDER BY total_spent DESC
LIMIT 1;


-- 8. Calculate daily spending
SELECT
    expense_date,
    SUM(amount) AS daily_total
FROM expenses
GROUP BY expense_date
ORDER BY expense_date;


-- 9. Calculate October 2026 expenses
SELECT
    SUM(amount) AS october_expenses
FROM expenses
WHERE expense_date >= '2026-10-01'
  AND expense_date < '2026-11-01';


-- 10. Find categories exceeding their monthly budget
SELECT
    c.category_name,
    b.budget_amount,
    b.actual_amount,
    b.remaining_budget,
    b.status
FROM monthly_budget b
JOIN categories c
    ON b.category_id = c.category_id
WHERE b.actual_amount > b.budget_amount;
