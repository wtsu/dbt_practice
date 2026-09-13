{{config(enabled = false)}}

create database if not exists raw;

create schema if not exists raw.manual_insert_data;


CREATE TABLE raw.manual_insert_data.employees (
    id INT,
    name VARCHAR(100),
    department VARCHAR(50),
    salary NUMBER(10, 2)
);

-- Single row
INSERT INTO raw.manual_insert_data.employees (id, name, department, salary)
VALUES (101, 'Alice Smith', 'Engineering', 95000);

-- Multiple rows
INSERT INTO raw.manual_insert_data.employees (id, name, department, salary)
VALUES 
    (102, 'Bob Jones', 'Marketing', 75000),
    (103, 'Carol White', 'Sales', 82000);


-- update Alice Smith 
UPDATE raw.manual_insert_data.employees
SET salary = 100000
WHERE id = 101;

-- delete alice smith 
DELETE FROM raw.manual_insert_data.employees
WHERE id = 101;

-- reset for testing
drop table raw.manual_insert_data.employees;

drop table analytics_dev.dbt_wtsu.employees_snapshot;