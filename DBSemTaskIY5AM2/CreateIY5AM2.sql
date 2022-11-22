DROP DATABASE IF EXISTS RS;
CREATE DATABASE RS;

DROP TABLE IF EXISTS RS.Customer;
CREATE TABLE RS.Customer(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
    gender CHAR(1) NOT NULL,
    age INT(2) NOT NULL,
	post_code VARCHAR(30) NOT NULL,
    city VARCHAR(30) NOT NULL,
    street VARCHAR(30) NOT NULL,
    email VARCHAR(40) NOT NULL
);
DESCRIBE RS.Customer;

DROP TABLE IF EXISTS RS.Driver;
CREATE TABLE RS.Driver(
	driver_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    post_code VARCHAR(30) NOT NULL,
    city VARCHAR(30) NOT NULL,
    street VARCHAR(30) NOT NULL,
    gender CHAR(1) NOT NULL,
	phone_number VARCHAR(12) NOT NULL
);
DESCRIBE RS.Driver;

DROP TABLE IF EXISTS RS.Cars;
CREATE TABLE RS.Cars(
	car_id INT PRIMARY KEY AUTO_INCREMENT,
	car_number VARCHAR(7) NOT NULL,
    model VARCHAR(30) NOT NULL,
	car_status VARCHAR(1) NOT NULL,
	rent_price INT NOT NULL,
	driver_id INT,
    FOREIGN KEY(driver_id) REFERENCES RS.Driver(driver_id) ON DELETE CASCADE
);
DESCRIBE RS.Cars;

DROP TABLE IF EXISTS RS.Trans;
CREATE TABLE RS.Trans(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    transaction_name VARCHAR(30) NOT NULL,
    transaction_date  DATE NOT NULL,
	car_id INT,
	customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES RS.Customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY(car_id) REFERENCES RS.Cars(car_id) ON DELETE CASCADE
);
DESCRIBE RS.Trans;

DROP TABLE IF EXISTS RS.Trans_data;
CREATE TABLE RS.Trans_data(
	transaction_data VARCHAR(4),
	transaction_id INT,
    FOREIGN KEY(transaction_id) REFERENCES RS.Trans(transaction_id) ON DELETE CASCADE
);
DESCRIBE RS.Trans_data;

DROP TABLE IF EXISTS RS.AdminA;
CREATE TABLE RS.AdminA(
    AdminA_id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
    gender CHAR(1) NOT NULL,
    age INT(2) NOT NULL,
	post_code VARCHAR(30) NOT NULL,
    city VARCHAR(30) NOT NULL,
    street VARCHAR(30) NOT NULL,
    email VARCHAR(40) NOT NULL
);
DESCRIBE RS.AdminA;

DROP TABLE IF EXISTS RS.Approving;
CREATE TABLE RS.Approving(
	verification_date DATE NOT NULL,
	transaction_id INT,
	AdminA_id INT,
    FOREIGN KEY(transaction_id) REFERENCES RS.Trans(transaction_id) ON DELETE CASCADE,
    FOREIGN KEY(AdminA_id) REFERENCES RS.AdminA(AdminA_id) ON DELETE CASCADE
);
DESCRIBE RS.Approving;