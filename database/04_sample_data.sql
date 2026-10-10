
USE expense_intelligence;

-- Sample income
INSERT INTO income
(amount, income_source, income_date, description)
VALUES
(30000.00, 'Salary', '2026-10-01', 'Sample monthly income');

-- Sample expenses
INSERT INTO expenses
(category_id, amount, description, expense_date, payment_method)
VALUES
(1, 4500.00, 'Groceries and daily food', '2026-10-02', 'UPI'),
(1, 800.00, 'Snacks and beverages', '2026-10-05', 'Cash'),
(2, 7000.00, 'Monthly house rent', '2026-10-01', 'UPI'),
(3, 1200.00, 'Electricity bill', '2026-10-04', 'UPI'),
(4, 500.00, 'Water bill', '2026-10-04', 'UPI'),
(5, 1800.00, 'Bus and fuel expenses', '2026-10-08', 'UPI'),
(6, 1000.00, 'Study materials', '2026-10-10', 'Card'),
(7, 500.00, 'Medicine expenses', '2026-10-12', 'Cash'),
(8, 3000.00, 'Clothes', '2026-10-15', 'Card'),
(9, 1500.00, 'Movie and entertainment', '2026-10-18', 'UPI'),
(10, 2800.00, 'Restaurant and food delivery', '2026-10-20', 'UPI'),
(11, 800.00, 'Streaming subscription', '2026-10-22', 'Card'),
(12, 700.00, 'Miscellaneous expenses', '2026-10-25', 'Cash');
