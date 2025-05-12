-- Customers table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_email CHECK (email LIKE '%@%.%')
);

-- Restaurants table
CREATE TABLE Restaurants (
    restaurant_id INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_name VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Item Categories table
CREATE TABLE Item_Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name ENUM('Starter', 'Main Course', 'Dessert', 'Drinks') NOT NULL
);

-- Items table
CREATE TABLE Items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    base_price DECIMAL(10,2) NOT NULL,
    category_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES Item_Categories(category_id),
    CONSTRAINT chk_price CHECK (base_price > 0)
);

-- Item_Restaurant junction table for varying prices
CREATE TABLE Item_Restaurant (
    item_id INT NOT NULL,
    restaurant_id INT NOT NULL,
    current_price DECIMAL(10,2) NOT NULL,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (item_id, restaurant_id),
    FOREIGN KEY (item_id) REFERENCES Items(item_id) ON DELETE CASCADE,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id) ON DELETE CASCADE,
    CONSTRAINT chk_current_price CHECK (current_price > 0)
);

-- Managers table
CREATE TABLE Managers (
    manager_id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT mgr_chk_email CHECK (email LIKE '%@%.%')
);

-- Vehicles table
CREATE TABLE Vehicles (
    registration_number VARCHAR(20) PRIMARY KEY,
    color VARCHAR(30) NOT NULL,
    date_of_purchase DATE NOT NULL,
    engine_size VARCHAR(20) NOT NULL,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Drivers table
CREATE TABLE Drivers (
    driver_id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    salary DECIMAL(10,2) NOT NULL,
    ni_number VARCHAR(15) NOT NULL UNIQUE,
    driving_license_number VARCHAR(20) NOT NULL UNIQUE,
    license_issue_date DATE NOT NULL,
    license_country VARCHAR(50) NOT NULL,
    license_expiry_date DATE NOT NULL,
    manager_id INT NOT NULL,
    restaurant_id INT NOT NULL,
    vehicle_reg_number VARCHAR(20) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (manager_id) REFERENCES Managers(manager_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id),
    FOREIGN KEY (vehicle_reg_number) REFERENCES Vehicles(registration_number),
    CONSTRAINT chk_salary CHECK (salary > 0),
    CONSTRAINT chk_license_date CHECK (license_issue_date < license_expiry_date),
    CONSTRAINT driver_chk_email CHECK (email LIKE '%@%.%')
);

-- Orders table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    restaurant_id INT NOT NULL,
    driver_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('Pending', 'Preparing', 'Ready', 'In Transit', 'Delivered', 'Cancelled') DEFAULT 'Pending',
    delivery_address VARCHAR(255) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id),
    FOREIGN KEY (driver_id) REFERENCES Drivers(driver_id)
);

-- Order_Items table
CREATE TABLE Order_Items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    item_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    price_at_order DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES Items(item_id),
    CONSTRAINT chk_quantity CHECK (quantity > 0),
    CONSTRAINT chk_order_price CHECK (price_at_order > 0)
);