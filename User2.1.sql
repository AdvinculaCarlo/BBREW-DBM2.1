-- User Role Table (User Management Table)
CREATE TABLE UserRole (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_of_role VARCHAR(255) NOT NULL
);

-- User Table (User Management Table)
CREATE TABLE User (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    age INT,
    birthday DATE NULL,
    address VARCHAR(200),
    user_role_id INT,
    access_key VARCHAR(20),
    thumbnail_path VARCHAR(100),
    FOREIGN KEY (user_role_id) REFERENCES UserRole(id)
);

-- Activity Logs Table (Reports Table)
CREATE TABLE ActivityLogs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    action_made VARCHAR(255) NOT NULL,
    action_path VARCHAR(255) NOT NULL,
    user_id INT,
    date_time TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(id)
);