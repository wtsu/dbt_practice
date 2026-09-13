{{config(enabled = false)}}

create database if not exists raw;

create schema if not exists raw.manual_insert_data;


CREATE TABLE raw.manual_insert_data.orders (
    order_id INT,
    order_amount NUMBER(10, 2),
    loaded_at TIMESTAMP_NTZ
);

-- last updated 7 days
INSERT INTO raw.manual_insert_data.orders  (order_id, order_amount, loaded_at)
VALUES (1, 100, current_timestamp() - interval '7 day');

-- last updated at 3 days
INSERT INTO raw.manual_insert_data.orders  (order_id, order_amount, loaded_at)
VALUES 
    (1, 100, current_timestamp() - interval '3 day');

-- last updated at now
INSERT INTO raw.manual_insert_data.orders  (order_id, order_amount, loaded_at)
VALUES 
    (1, 100, current_timestamp());

-- reset for testing
drop table raw.manual_insert_data.orders;