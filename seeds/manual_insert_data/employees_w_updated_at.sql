{{config(enabled = false)}}

create database if not exists raw;

create schema if not exists raw.manual_insert_data;


CREATE TABLE raw.manual_insert_data.employees_w_updated_at (
    id INT,
    name VARCHAR(100),
    department VARCHAR(50),
    salary NUMBER(10, 2),
    updated_at TIMESTAMP_NTZ
);

-- Single row
INSERT INTO raw.manual_insert_data.employees_w_updated_at (id, name, department, salary, updated_at)
VALUES (101, 'Alice Smith', 'Engineering', 95000, systimestamp());

-- Multiple rows
INSERT INTO raw.manual_insert_data.employees_w_updated_at (id, name, department, salary, updated_at)
VALUES 
    (102, 'Bob Jones', 'Marketing', 75000, systimestamp()),
    (103, 'Carol White', 'Sales', 82000, systimestamp());


-- update Alice Smith 
UPDATE raw.manual_insert_data.employees_w_updated_at
SET salary = 100000,
UPDATED_AT = systimestamp()
WHERE id = 101;

-- delete alice smith 
DELETE FROM raw.manual_insert_data.employees_w_updated_at
WHERE id = 101;

-- reset for testing
drop table raw.manual_insert_data.employees_w_updated_at;

drop table analytics_dev.snapshots.employees_snapshot;