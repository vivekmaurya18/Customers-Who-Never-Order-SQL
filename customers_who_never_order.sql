create database company;
use company;

CREATE TABLE Customers (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Orders (
    id INT PRIMARY KEY,
    customerId INT
);

INSERT INTO Customers (id, name) VALUES
(1, 'Joe'),
(2, 'Henry'),
(3, 'Sam'),
(4, 'Max');

INSERT INTO Orders (id, customerId) VALUES
(1, 3),
(2, 1);

select name as customers
from customers 
where id not in
(select customerId 
from orders);
