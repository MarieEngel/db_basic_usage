DROP DATABASE IF EXISTS vehicles;


CREATE DATABASE vehicles;

\c vehicles


CREATE TABLE car_model (
    id SERIAL PRIMARY KEY,
    car_name VARCHAR(40),
    make VARCHAR(40),
    year_of_checkin VARCHAR(4),
    engine_type VARCHAR(20),
    stock INT
);

ALTER TABLE car_model ADD COLUMN IF NOT EXISTS number_of_doors INT;

ALTER TABLE car_model RENAME COLUMN year_of_checkin TO year_of_manufacture;

ALTER TABLE car_model ALTER COLUMN year_of_manufacture  TYPE integer USING year_of_manufacture::integer;

ALTER TABLE car_model DROP COLUMN year_of_manufacture;