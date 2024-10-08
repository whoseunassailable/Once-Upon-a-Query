-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS queryville_db;

-- Step 2: Use the newly created database
USE queryville_db;

-- Step 3: Create the citizens table
CREATE TABLE IF NOT EXISTS citizens_of_queryville (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    status VARCHAR(20),
    city VARCHAR(50)
);

-- Step 4: Insert data into the table
INSERT INTO citizens_of_queryville (id, first_name, last_name, age, status, city)
VALUES
    (1, 'Alice', 'Johnson', 30, 'Missing', 'Queryville'),
    (2, 'Bob', 'Smith', 25, 'Active', 'Queryville'),
    (3, 'Charlie', 'Williams', 40, 'Active', 'Queryville'),
    (4, 'Daisy', 'Brown', 22, 'Missing', 'Queryville'),
    (5, 'Ethan', 'Davis', 35, 'Active', 'Queryville'),
    (6, 'Fiona', 'Wilson', 29, 'Missing', 'Queryville');

LOAD DATA LOCAL INFILE '/Users/whoseunassailable/Documents/coding_projects/Once-Upon-a-Query/exercise/01-vanishing-citizens/dataset/citizens_data.csv'
INTO TABLE citizens_of_queryville
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


Select first_name, last_name 
FROM citizens_of_queryville
where status = "Missing";

SELECT *
FROM citizens_of_queryville
where status = "Missing"
ORDER BY age DESC;

SELECT COUNT(status)
FROM citizens_of_queryville
WHERE status = "Missing"

SELECT *
FROM citizens_of_queryville
WHERE status = "Missing" AND city = "Queryville";

SELECT AVG(age)
FROM citizens_of_queryville
WHERE status = "Missing";
