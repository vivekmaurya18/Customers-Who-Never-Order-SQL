# Customers Who Never Order - SQL

## Problem Statement

Find all customers who have never placed an order.

### Customers Table

| id | name  |
| -- | ----- |
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |

### Orders Table

| id | customerId |
| -- | ---------- |
| 1  | 3          |
| 2  | 1          |

### Expected Output

| Customers |
| --------- |
| Henry     |
| Max       |

## SQL Solution

```sql
SELECT name AS Customers
FROM Customers
WHERE id NOT IN (
    SELECT customerId
    FROM Orders
);
```

## Create Tables

```sql
CREATE TABLE Customers (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Orders (
    id INT PRIMARY KEY,
    customerId INT
);
```

## Insert Sample Data

```sql
INSERT INTO Customers (id, name) VALUES
(1, 'Joe'),
(2, 'Henry'),
(3, 'Sam'),
(4, 'Max');

INSERT INTO Orders (id, customerId) VALUES
(1, 3),
(2, 1);
```

## Run the Query

```sql
SELECT name AS Customers
FROM Customers
WHERE id NOT IN (
    SELECT customerId
    FROM Orders
);
```
