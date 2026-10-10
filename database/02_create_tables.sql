USE expense_intelligence;

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    category_type ENUM('Essential', 'Non-Essential') NOT NULL,
    description VARCHAR(255)
);

CREATE TABLE expenses (
    expense_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    description VARCHAR(255),
    expense_date DATE NOT NULL,
    payment_method ENUM('Cash', 'UPI', 'Card', 'Other') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

CREATE TABLE income (
    income_id INT AUTO_INCREMENT PRIMARY KEY,
    amount DECIMAL(10,2) NOT NULL,
    income_source VARCHAR(100) NOT NULL,
    income_date DATE NOT NULL,
    description VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE monthly_summary (
    summary_id INT AUTO_INCREMENT PRIMARY KEY,
    month INT NOT NULL,
    year INT NOT NULL,
    total_income DECIMAL(10,2) DEFAULT 0,
    total_expenses DECIMAL(10,2) DEFAULT 0,
    essential_expenses DECIMAL(10,2) DEFAULT 0,
    nonessential_expenses DECIMAL(10,2) DEFAULT 0,
    remaining_money DECIMAL(10,2) DEFAULT 0,
    average_daily_expense DECIMAL(10,2) DEFAULT 0,
    highest_expense_category VARCHAR(100),
    survival_budget DECIMAL(10,2) DEFAULT 0,
    recommended_savings DECIMAL(10,2) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (month, year)
);

CREATE TABLE monthly_budget (
    budget_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT NOT NULL,
    month INT NOT NULL,
    year INT NOT NULL,
    budget_amount DECIMAL(10,2) NOT NULL,
    actual_amount DECIMAL(10,2) DEFAULT 0,
    remaining_budget DECIMAL(10,2) DEFAULT 0,
    status ENUM('Under Budget', 'Near Limit', 'Over Budget')
        DEFAULT 'Under Budget',
    FOREIGN KEY (category_id)
        REFERENCES categories(category_id),
    UNIQUE (category_id, month, year)
);

CREATE TABLE recommendations (
    recommendation_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    month INT NOT NULL,
    year INT NOT NULL,
    recommendation_type ENUM('Reduce', 'Avoid', 'Save', 'Budget') NOT NULL,
    current_spending DECIMAL(10,2) DEFAULT 0,
    previous_spending DECIMAL(10,2) DEFAULT 0,
    potential_saving DECIMAL(10,2) DEFAULT 0,
    recommendation_text TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);