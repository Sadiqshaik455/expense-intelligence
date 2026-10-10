USE expense_intelligence;

INSERT INTO categories
(category_name, category_type, description)
VALUES
('Food', 'Essential', 'Daily food and groceries'),
('Rent', 'Essential', 'House or room rent'),
('Electricity', 'Essential', 'Electricity bills'),
('Water', 'Essential', 'Water bills'),
('Transportation', 'Essential', 'Travel expenses'),
('Education', 'Essential', 'Study-related expenses'),
('Medicine', 'Essential', 'Healthcare expenses'),
('Shopping', 'Non-Essential', 'Clothes and accessories'),
('Entertainment', 'Non-Essential', 'Movies and games'),
('Eating Out', 'Non-Essential', 'Restaurants and food delivery'),
('Subscriptions', 'Non-Essential', 'Online subscriptions'),
('Other', 'Non-Essential', 'Miscellaneous expenses');