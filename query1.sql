DROP TABLE IF EXISTS repair_order;
DROP TABLE IF EXISTS guest;
DROP TABLE IF EXISTS revenue;
DROP TABLE IF EXISTS spare_inventory;
DROP TABLE IF EXISTS services;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS hotel;
DROP TABLE IF EXISTS rates;
DROP TABLE IF EXISTS maintenance;
DROP TABLE IF EXISTS service_charges;
DROP TABLE IF EXISTS types_of_employees;
DROP TABLE IF EXISTS room_availability;
DROP TABLE IF EXISTS reservation;
DROP TABLE IF EXISTS expenses;

CREATE TABLE "repair_order"(
    "invoice_id" INT NOT NULL,
    "hotel_id" INT NOT NULL
);

CREATE TABLE "guest"(
    "phone" VARCHAR(255) NOT NULL,
    "guest_id" INT NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "fname" VARCHAR(255) NOT NULL,
    "lname" VARCHAR(255) NOT NULL
);

CREATE TABLE "revenue"(
    "hotel_id" INT NOT NULL,
    "revenue_date" DATE NOT NULL,
    "vending_machines" DECIMAL(38, 2) NOT NULL,
    "guest_stays" DECIMAL(38, 2) NOT NULL,
    "total_revenue" DECIMAL(38, 2) NULL,
    "profit_or_loss?" DECIMAL(38, 2) NULL
);

CREATE TABLE "spare_inventory"(
    "hotel_id" INT NULL,
    "luggage_racks" SMALLINT NULL,
    "first_aid_kits" SMALLINT NULL,
    "all_purpose_cleaner" SMALLINT NULL,
    "fire_extinguishers" SMALLINT NULL,
    "glass_cleaner" SMALLINT NULL,
    "key_holders" SMALLINT NULL,
    "toilet_bowl_cleaner" SMALLINT NULL,
    "key_cards" SMALLINT NULL,
    "disinfectant" SMALLINT NULL,
    "coffee_beans" SMALLINT NULL,
    "bleach" SMALLINT NULL,
    "cream" SMALLINT NULL,
    "laundry_detergent" SMALLINT NULL,
    "sugar" SMALLINT NULL,
    "stain_remover" SMALLINT NULL,
    "tea_bags" SMALLINT NULL,
    "fabric_softener" SMALLINT NULL,
    "pillows" SMALLINT NULL,
    "mops" SMALLINT NULL,
    "pillowcases" SMALLINT NULL,
    "buckets" SMALLINT NULL,
    "blankets" SMALLINT NULL,
    "vaccums" SMALLINT NULL,
    "towles" SMALLINT NULL,
    "brooms" SMALLINT NULL,
    "bedsheets" SMALLINT NULL,
    "dust_pans" SMALLINT NULL,
    "bar_of_soap" SMALLINT NULL,
    "janitor_carts" SMALLINT NULL,
    "conditioner_bottle" SMALLINT NULL,
    "scrub_brush" SMALLINT NULL,
    "shampoo_bottle" SMALLINT NULL,
    "microfiber_cloth" SMALLINT NULL,
    "outdoor_heater" SMALLINT NULL,
    "bed_bug_spray" SMALLINT NULL,
    "snow_shovels" SMALLINT NULL,
    "air_freshener" SMALLINT NULL,
    "chemical_test_kit" SMALLINT NULL,
    "upholstery_cleaners" SMALLINT NULL,
    "pool_vacuum" SMALLINT NULL,
    "trash_bags" SMALLINT NULL,
    "nets" SMALLINT NULL,
    "gloves" SMALLINT NULL,
    "skimmers" SMALLINT NULL,
    "cleaning_uniforms" SMALLINT NULL,
    "pressure_washer" SMALLINT NULL,
    "squeegees" SMALLINT NULL
);

CREATE TABLE "services"(
    "service_id" BIGINT NOT NULL,
    "service_name" VARCHAR(255) NOT NULL,
    "description" TEXT NOT NULL,
    "amount" DECIMAL(38, 2) NOT NULL
);

CREATE TABLE "employee"(
    "emp_id" INT NOT NULL,
    "hotel_id" INT NOT NULL,
    "emp_type_id" INT NOT NULL,
    "fname" VARCHAR(255) NOT NULL,
    "lname" VARCHAR(255) NOT NULL,
    "initial" CHAR(1) NOT NULL,
    "hire_date" DATE NULL,
	"resignation_date" DATE NULL,
    "dob" DATE NOT NULL,
    "street_address" VARCHAR(255) NOT NULL,
    "city" VARCHAR(255) NOT NULL,
    "state" VARCHAR(255) NOT NULL,
    "zip" VARCHAR(255) NOT NULL,
    "country" VARCHAR(255) NOT NULL
);

CREATE TABLE "hotel"(
    "hotel_id" INT NOT NULL,
    "hotel_name" VARCHAR(255) NOT NULL,
    "date_established" DATE NOT NULL,
    "street_address" VARCHAR(255) NOT NULL,
    "city" VARCHAR(255) NOT NULL,
    "state" VARCHAR(255) NOT NULL,
    "zip" VARCHAR(255) NOT NULL,
    "country" VARCHAR(255) NOT NULL,
    "num_of_pools" SMALLINT NOT NULL,
    "num_of_hot_tubs" SMALLINT NOT NULL,
    "spa" BIT NOT NULL,
    "pet_friendly" BIT NOT NULL
);

CREATE TABLE "rates"(
    "rate_id" SMALLINT NOT NULL,
    "room_rate" DECIMAL(38, 2) NOT NULL
);

CREATE TABLE "maintenance"(
    "invoice_id" INT NOT NULL,
    "maintenance_name" VARCHAR(255) NOT NULL,
    "cost" DECIMAL(38, 2) NOT NULL,
    "date" DATETIME NOT NULL,
    "description" TEXT NOT NULL
);

CREATE TABLE "service_charges"(
    "charge_id" BIGINT NOT NULL,
    "service_id" BIGINT NOT NULL,
    "reservation_id" INT NOT NULL,
    "date" DATETIME NOT NULL
);

CREATE TABLE "types_of_employees"(
    "pay" DECIMAL(38, 2) NOT NULL,
    "emp_type_id" INT NOT NULL,
    "emp_type_name" VARCHAR(255) NOT NULL
);

CREATE TABLE "room_availability"(
    "hotel_id" INT NOT NULL,
    "room" SMALLINT NOT NULL,
    "status" BIT NOT NULL
);

CREATE TABLE "reservation"(
    "reservation_id" INT NOT NULL,
    "hotel_id" INT NOT NULL,
    "guest_id" INT NOT NULL,
    "room" SMALLINT NOT NULL,
    "rate_id" SMALLINT NOT NULL,
    "services_total" DECIMAL(38, 2) NULL,
    "late_checkout_fee" DECIMAL(38, 2) NULL,
    "subtotal" DECIMAL(38, 2) NULL,
    "occupancy_tax" DECIMAL(38, 2) NULL,
    "sales_tax" DECIMAL(38, 2) NULL,
    "city_tax" DECIMAL(38, 2) NULL,
    "taxes" DECIMAL(38, 2) NULL,
    "final_amount_due" DECIMAL(38, 2) NULL,
    "checkin_date" DATE NOT NULL,
    "checkout_date" DATE NOT NULL,
);

CREATE TABLE "expenses"(
    "hotel_id" INT NOT NULL,
    "expenses_date" DATE NOT NULL,
    "electricity" DECIMAL(38, 2) NOT NULL,
    "water" DECIMAL(38, 2) NOT NULL,
    "gas" DECIMAL(38, 2) NOT NULL,
    "isp" DECIMAL(38, 2) NOT NULL,
    "wages" DECIMAL(38, 2) NOT NULL,
    "supplies" DECIMAL(38, 2) NOT NULL,
    "marketing" DECIMAL(38, 2) NOT NULL,
    "licensing_permits" DECIMAL(38, 2) NOT NULL,
    "property_tax" DECIMAL(38, 2) NOT NULL,
    "maintenance" DECIMAL(38, 2) NOT NULL,
    "vending_machines" DECIMAL(38, 2) NOT NULL,
    "total_expenses" DECIMAL(38, 2) NULL
);

--Insert Data
--hotel
INSERT INTO hotel VALUES (1, 'Northern Traveler Motel', '4/1/2022', '5493 US-23', 'Oscoda', 'MI', '48750', 'United States', 0, 0, 0, 0);
INSERT INTO hotel VALUES (2, 'Sunkissed Resort', '4/26/2022', '3526 N Huron Rd', 'Au Sable', 'MI', '48750', 'United States', 0, 0, 0, 0);

--revenue
INSERT INTO revenue VALUES (1, '7/1/2023', '205.42', '10596.48', null, null);
INSERT INTO revenue VALUES (2, '7/1/2023', '160.28', '12594.82', null, null);

--expenses
INSERT INTO expenses VALUES(1, '7/1/2023', '380.82', '184.29', '174.28', '206.93', '185.78', '374.59', '167.49', '592.73', '838.06', '496.57', '294.19', null);
INSERT INTO expenses VALUES(2, '7/1/2023', '493.48', '295.20', '294.60', '396.99', '859.79', '365.56', '268.46', '586.43', '757.46', '756.56', '476.76', null);

--spare_inventory
INSERT INTO spare_inventory VALUES(1, '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47');
INSERT INTO spare_inventory VALUES(2, '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47');

--reservation
INSERT INTO reservation VALUES(1, 1, 1, 1, 1, '15.24', '40.00', '455.24', '0.00', '27.31', '0.00', '27.31', '482.55', '7/1/2023', '7/6/2023'); --DO NOT DELETE THIS LINE!

--rates
INSERT INTO rates VALUES(1, '100.00');

--guest
INSERT INTO guest VALUES('555-555-5555', 1, 'microsoftsqlserverisapieceofgarbagesoftware@hotmail.com', 'John', 'Max');

--service_charges
INSERT INTO service_charges VALUES(1, 1, 1, '7/4/2023 12:00:00');

--services
INSERT INTO services VALUES(1, 'Lunch', 'Two Cheeseburgers', '15.24');

--room_availability
INSERT INTO room_availability VALUES(1, 1, 1);
INSERT INTO room_availability VALUES(1, 2, 1);
INSERT INTO room_availability VALUES(1, 3, 1);
INSERT INTO room_availability VALUES(1, 4, 1);
INSERT INTO room_availability VALUES(1, 5, 1);
INSERT INTO room_availability VALUES(1, 6, 1);
INSERT INTO room_availability VALUES(1, 7, 1);
INSERT INTO room_availability VALUES(1, 8, 1);
INSERT INTO room_availability VALUES(1, 9, 1);
INSERT INTO room_availability VALUES(1, 10, 1);
INSERT INTO room_availability VALUES(2, 1, 1);
INSERT INTO room_availability VALUES(2, 2, 1);
INSERT INTO room_availability VALUES(2, 3, 1);
INSERT INTO room_availability VALUES(2, 4, 1);
INSERT INTO room_availability VALUES(2, 5, 1);
INSERT INTO room_availability VALUES(2, 6, 1);
INSERT INTO room_availability VALUES(2, 7, 1);
INSERT INTO room_availability VALUES(2, 8, 1);
INSERT INTO room_availability VALUES(2, 9, 1);
INSERT INTO room_availability VALUES(2, 10, 1);

--employee
INSERT INTO employee VALUES(1, 1, 1, 'Anne', 'Min', 'A', '4/1/2022', null, '2/14/1985', '5463 N Huron Rd', 'Oscoda', 'MI', '48750', 'United States');
INSERT INTO employee VALUES(2, 1, 2, 'Avery', 'Archer', 'B', '4/1/2022', null, '6/22/1993', '5325 S US-23', 'Oscoda', 'MI', '48750', 'United States');
INSERT INTO employee VALUES(3, 1, 3, 'Bobby', 'Hill', 'C', '4/1/2022', null, '10/7/2001', '5299 US-23', 'Oscoda', 'MI', '48750', 'United States');
INSERT INTO employee VALUES(4, 1, 4, 'Brent', 'Harrison', 'D', '4/1/2022', null, '3/31/1988', '5226 US-23', 'Oscoda', 'MI', '48750', 'United States');
INSERT INTO employee VALUES(5, 1, 5, 'Charlie', 'Parker', 'E', '4/1/2022', null, '11/11/1990', '5211 N N US-23', 'Oscoda', 'MI', '48750', 'United States');
INSERT INTO employee VALUES(6, 2, 1, 'Evelynn', 'Mitchell', 'F', '4/26/2022', null, '8/5/1982', '5160 US-23', 'Oscoda', 'MI', '48750', 'United States');
INSERT INTO employee VALUES(7, 2, 2, 'Franklin', 'Brooks', 'G', '4/26/2022', null, '1/19/2000', '5150 US-23', 'Oscoda', 'MI', '48750', 'United States');
INSERT INTO employee VALUES(8, 2, 3, 'Gary', 'Fletcher', 'H', '4/26/2022', null, '9/23/1987', '5130 US-23', 'Oscoda', 'MI', '48750', 'United States');
INSERT INTO employee VALUES(9, 2, 4, 'Hayley', 'Wells', 'I', '4/26/2022', null, '4/2/1995', '5121 US-23', 'Oscoda', 'MI', '48750', 'United States');
INSERT INTO employee VALUES(10, 2, 5, 'Joe', 'Hughes', 'J', '4/26/2022', null, '12/30/1998', '5050 N Huron Rd', 'Oscoda', 'MI', '48750', 'United States');

--types_of_employees, manager, front desk, housekeeping, cook, room service
INSERT INTO types_of_employees VALUES('40.00', 1, 'Hotel Manager');
INSERT INTO types_of_employees VALUES('18.00', 2, 'Front Desk');
INSERT INTO types_of_employees VALUES('16.00', 3, 'Housekeeping');
INSERT INTO types_of_employees VALUES('18.00', 4, 'Cook');
INSERT INTO types_of_employees VALUES('15.00', 5, 'Room Service');

--repair_order
INSERT INTO repair_order VALUES(1, 1);

--maintenance
INSERT INTO maintenance VALUES(1, 'Window Repair', '100.00', '5/17/2023 9:00:00', 'Repaired the seal on the window of room five.');

SELECT * FROM hotel;
SELECT * FROM revenue;
SELECT * FROM expenses;
SELECT * FROM spare_inventory;
SELECT * FROM reservation;
SELECT * FROM rates;
SELECT * FROM guest;
SELECT * FROM service_charges;
SELECT * FROM services;
SELECT * FROM room_availability;
SELECT * FROM employee;
SELECT * FROM types_of_employees;
SELECT * FROM repair_order;
SELECT * FROM maintenance;
