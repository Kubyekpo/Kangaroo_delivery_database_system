-- Inserting into customers table
INSERT INTO Customers (last_name, first_name, email, phone_number) VALUES
('Adebayo', 'Yemi', 'yemi.adebayo@gmail.ng', '08123456789'),
('Okafor', 'Chukwuemeka', 'c.okafor@yahoo.com', '08134567890'),
('Mohammed', 'Fatima', 'fatima.m@outlook.ng', '08145678901'),
('Eze', 'Ifeanyi', 'ifeanyi.eze@zoho.com', '08156789012'),
('Ojo', 'Bimpe', 'bimpe.ojo@protonmail.ng', '08167890123'),
('Balogun', 'Segun', 'segun.balogun@mail.ng', '08178901234'),
('Ibeh', 'Nneka', 'nneka.ibeh@fastmail.com', '08189012345'),
('Yusuf', 'Kabiru', 'k.yusuf@rocketmail.ng', '08190123456'),
('Nwachukwu', 'Obi', 'obi.nwachukwu@icloud.ng', '08101234567'),
('Akinwumi', 'Folake', 'folake.akinwumi@live.ng', '08112345678'),
('Ogunlesi', 'Tola', 'tola.ogunlesi@yahoo.ng', '08123456780'),
('Adeleke', 'Femi', 'femi.adeleke@outlook.ng', '08134567891'),
('Okoro', 'Chika', 'chika.okoro@zoho.com', '08145678902'),
('Bello', 'Amina', 'amina.bello@protonmail.ng', '08156789013'),
('Ezeogu', 'Emeka', 'emeka.ezeogu@mail.ng', '08167890124');




-- Inserting into item-categories table
INSERT INTO Item_Categories (category_name) VALUES 
('Starter'), ('Main Course'), ('Dessert'), ('Drinks'),
('Starter'), ('Main Course'), ('Dessert'), ('Drinks'),
('Starter'),('Drinks');


-- Inserting into resturant table
INSERT INTO Restaurants (restaurant_name, address) VALUES
('Chicken Republic Ikeja', '23 Allen Avenue, Ikeja, Lagos'),
('Tantalizers Victoria Island', '45A Ahmadu Bello Way, Victoria Island, Lagos'),
('Sweet Sensation Surulere', '12 Bode Thomas Street, Surulere, Lagos'),
('Mr Biggs Abuja', 'Plot 123, Central Business District, Abuja'),
('Kilimanjaro Restaurant', '22 Adetokunbo Ademola Street, Wuse 2, Abuja'),
('Bungalow Restaurant', '3A Etim Inyang Crescent, Victoria Island, Lagos'),
('Sky Restaurant', '14B Adeola Odeku Street, Victoria Island, Lagos'),
('Spice Route', '17A Sanusi Fafunwa Street, Victoria Island, Lagos'),
('The Place', '12A Ogunlana Drive, Surulere, Lagos'),
('Bukka Hut', '23 Adeniran Ogunsanya Street, Surulere, Lagos'),
('Cactus Restaurant', '12B Saka Tinubu Street, Victoria Island, Lagos'),
('Nkoyo Restaurant', '6B Etim Inyang Crescent, Victoria Island, Lagos');

-- Inserting into managers table
INSERT INTO Managers (last_name, first_name, email, phone_number) VALUES
('Adeleke', 'Oluwaseun', 'adeleke.oluwaseun@kangaroo.ng', '08012345678'),
('Okonkwo', 'Chinedu', 'okonkwo.chinedu@kangaroo.ng', '08023456789'),
('Balogun', 'Amina', 'balogun.amina@kangaroo.ng', '08034567890'),
('Eze', 'Emeka', 'eze.emeka@kangaroo.ng', '08045678901'),
('Okafor', 'Ngozi', 'okafor.ngozi@kangaroo.ng', '08056789012'),
('Ibrahim', 'Musa', 'ibrahim.musa@kangaroo.ng', '08067890123'),
('Ogunlesi', 'Tunde', 'ogunlesi.tunde@kangaroo.ng', '08078901234'),
('Adeyemi', 'Femi', 'adeyemi.femi@kangaroo.ng', '08089012345'),
('Mohammed', 'Aisha', 'mohammed.aisha@kangaroo.ng', '08090123456'),
('Nwachukwu', 'Obi', 'nwachukwu.obi@kangaroo.ng', '08001234567'),
('Akinwumi', 'Folake', 'akinwumi.folake@kangaroo.ng', '08012345670'),
('Ezeogu', 'Emeka', 'ezeogu.emeka@kangaroo.ng', '08023456781');

-- Inserting into vehicle table
INSERT INTO Vehicles (registration_number, color, date_of_purchase, engine_size, make, model) VALUES
('ABC123LA', 'Red', '2022-01-15', '150cc', 'Honda', 'CB125F'),
('DEF456LA', 'Blue', '2022-02-20', '125cc', 'Bajaj', 'Boxer'),
('GHI789AB', 'Black', '2022-03-10', '150cc', 'Yamaha', 'YBR125'),
('JKL012AB', 'White', '2022-04-05', '125cc', 'TVS', 'Apache'),
('MNO345LA', 'Green', '2022-05-12', '150cc', 'Suzuki', 'GD110'),
('PQR678LA', 'Yellow', '2022-06-18', '125cc', 'Honda', 'CG125'),
('STU901AB', 'Silver', '2022-07-22', '150cc', 'Yamaha', 'XTZ125'),
('VWX234LA', 'Orange', '2022-08-30', '125cc', 'Bajaj', 'Pulsar'),
('YZA567AB', 'Purple', '2022-09-05', '150cc', 'TVS', 'Star City'),
('BCD890LA', 'Brown', '2022-10-12', '125cc', 'Suzuki', 'Hayate'),
('EFG123AB', 'Gray', '2022-11-15', '150cc', 'Honda', 'Shine'),
('HIJ456LA', 'Pink', '2022-12-20', '125cc', 'Yamaha', 'FZ'),
('KLM789AB', 'Gold', '2023-01-05', '150cc', 'Bajaj', 'Discover'),
('NOP012LA', 'Maroon', '2023-02-10', '125cc', 'TVS', 'Sport'),
('QRS345AB', 'Navy Blue', '2023-03-15', '150cc', 'Suzuki', 'Gixxer');

-- Inserting into drivers table
INSERT INTO Drivers (last_name, first_name, email, phone_number, salary, ni_number, 
                    driving_license_number, license_issue_date, license_country, license_expiry_date,
                    manager_id, restaurant_id, vehicle_reg_number) VALUES
('Ogunlesi', 'Tunde', 'ogunlesi.tunde@kangaroo.ng', '08067890123', 120000.00, 'AB123456C', 
 'DLN12345678', '2020-05-15', 'Nigeria', '2025-05-14', 1, 1, 'ABC123LA'),
('Ibrahim', 'Musa', 'ibrahim.musa@kangaroo.ng', '08078901234', 110000.00, 'CD234567D', 
 'DLN23456789', '2019-08-20', 'Nigeria', '2024-08-19', 2, 2, 'DEF456LA'),
('Okafor', 'Chioma', 'okafor.chioma@kangaroo.ng', '08089012345', 115000.00, 'EF345678E', 
 'DLN34567890', '2021-01-10', 'Nigeria', '2026-01-09', 3, 3, 'GHI789AB'),
('Adeyemi', 'Femi', 'adeyemi.femi@kangaroo.ng', '08090123456', 125000.00, 'GH456789F', 
 'DLN45678901', '2018-11-25', 'Nigeria', '2023-11-24', 4, 4, 'JKL012AB'),
('Mohammed', 'Aisha', 'mohammed.aisha@kangaroo.ng', '08001234567', 118000.00, 'IJ567890G', 
 'DLN56789012', '2020-07-30', 'Nigeria', '2025-07-29', 5, 5, 'MNO345LA'),
('Nwachukwu', 'Obi', 'nwachukwu.obi@kangaroo.ng', '08012345670', 122000.00, 'KL678901H', 
 'DLN67890123', '2019-04-12', 'Nigeria', '2024-04-11', 6, 6, 'PQR678LA'),
('Akinwumi', 'Folake', 'akinwumi.folake@kangaroo.ng', '08023456781', 116000.00, 'MN789012I', 
 'DLN78901234', '2020-09-18', 'Nigeria', '2025-09-17', 7, 7, 'STU901AB'),
('Ezeogu', 'Emeka', 'ezeogu.emeka@kangaroo.ng', '08034567892', 124000.00, 'OP890123J', 
 'DLN89012345', '2021-03-22', 'Nigeria', '2026-03-21', 8, 8, 'VWX234LA'),
('Balogun', 'Segun', 'balogun.segun@kangaroo.ng', '08045678903', 119000.00, 'QR901234K', 
 'DLN90123456', '2018-12-05', 'Nigeria', '2023-12-04', 9, 9, 'YZA567AB'),
('Adebayo', 'Yemi', 'adebayo.yemi@kangaroo.ng', '08056789014', 121000.00, 'ST012345L', 
 'DLN01234567', '2020-06-30', 'Nigeria', '2025-06-29', 10, 10, 'BCD890LA'),
('Okoro', 'Chika', 'okoro.chika@kangaroo.ng', '08067890125', 117000.00, 'UV123456M', 
 'DLN12345670', '2019-11-15', 'Nigeria', '2024-11-14', 11, 11, 'EFG123AB'),
('Bello', 'Amina', 'bello.amina@kangaroo.ng', '08078901236', 123000.00, 'WX234567N', 
 'DLN23456781', '2021-02-28', 'Nigeria', '2026-02-27', 12, 12, 'HIJ456LA'),
('Eze', 'Ifeanyi', 'eze.ifeanyi@kangaroo.ng', '08089012347', 114000.00, 'YZ345678O', 
 'DLN34567892', '2020-08-10', 'Nigeria', '2025-08-09', 1, 1, 'KLM789AB'),
('Ojo', 'Bimpe', 'ojo.bimpe@kangaroo.ng', '08090123458', 126000.00, 'AB456789P', 
 'DLN45678903', '2019-05-25', 'Nigeria', '2024-05-24', 2, 2, 'NOP012LA'),
('Ibeh', 'Nneka', 'ibeh.nneka@kangaroo.ng', '08001234569', 113000.00, 'BC567890Q', 
 'DLN56789014', '2020-10-15', 'Nigeria', '2025-10-14', 3, 3, 'QRS345AB');

-- Inserting into item table
INSERT INTO Items (item_name, base_price, category_id) VALUES
('Jollof Rice', 1500.00, 2),
('Fried Rice', 1600.00, 2),
('Pounded Yam & Egusi', 2000.00, 2),
('Pepper Soup', 1200.00, 1),
('Suya', 1000.00, 1),
('Chicken & Chips', 1800.00, 2),
('Beef Shawarma', 1500.00, 2),
('Plantain & Beans', 1200.00, 2),
('Chin Chin', 500.00, 3),
('Puff Puff', 300.00, 3),
('Zobo Drink', 400.00, 4),
('Chapman', 600.00, 4),
('Moi Moi', 800.00, 1),
('Amala & Ewedu', 1800.00, 2),
('Banga Soup & Starch', 2000.00, 2),
('Ofada Rice', 2200.00, 2),
('Eba & Okro Soup', 1700.00, 2),
('Fisherman Soup', 2500.00, 2),
('Nkwobi', 1800.00, 1),
('Isi Ewu', 2000.00, 1),
('Akara', 300.00, 1),
('Boli & Fish', 1500.00, 1),
('Dodo Ikire', 700.00, 3),
('Fruit Salad', 900.00, 3),
('Coconut Rice', 1900.00, 2);

-- Inserting into resturantitem table
INSERT INTO Item_Restaurant (item_id, restaurant_id, current_price) VALUES
(1, 1, 1600.00), (2, 1, 1700.00), (3, 1, 2200.00), (4, 1, 1300.00), (5, 1, 1100.00),
(6, 1, 1900.00), (7, 1, 1600.00), (8, 1, 1300.00), (9, 1, 550.00), (10, 1, 350.00),
(11, 1, 450.00), (12, 1, 650.00), (13, 1, 850.00), (14, 1, 1900.00), (15, 1, 2100.00),
(16, 1, 2300.00), (17, 1, 1800.00), (18, 1, 2600.00), (19, 1, 1900.00), (20, 1, 2100.00),
(21, 1, 350.00), (22, 1, 1600.00), (23, 1, 750.00), (24, 1, 950.00), (25, 1, 2000.00),
(1, 2, 1550.00), (2, 2, 1650.00), (3, 2, 2100.00), (4, 2, 1250.00), (5, 2, 1050.00),
(6, 2, 1850.00), (7, 2, 1550.00), (8, 2, 1250.00), (9, 2, 525.00), (10, 2, 325.00),
(11, 2, 425.00), (12, 2, 625.00), (13, 2, 825.00), (14, 2, 1850.00), (15, 2, 2050.00),
(16, 2, 2250.00), (17, 2, 1750.00), (18, 2, 2550.00), (19, 2, 1850.00), (20, 2, 2050.00),
(21, 2, 325.00), (22, 2, 1550.00), (23, 2, 725.00), (24, 2, 925.00), (25, 2, 1950.00),
(1, 12, 1650.00), (2, 12, 1750.00), (3, 12, 2300.00), (4, 12, 1350.00), (5, 12, 1150.00),
(6, 12, 1950.00), (7, 12, 1650.00), (8, 12, 1350.00), (9, 12, 575.00), (10, 12, 375.00),
(11, 12, 475.00), (12, 12, 675.00), (13, 12, 875.00), (14, 12, 1950.00), (15, 12, 2150.00),
(16, 12, 2350.00), (17, 12, 1850.00), (18, 12, 2650.00), (19, 12, 1950.00), (20, 12, 2150.00),
(21, 12, 375.00), (22, 12, 1650.00), (23, 12, 775.00), (24, 12, 975.00), (25, 12, 2050.00);

-- Inserting into order table
INSERT INTO Orders (customer_id, restaurant_id, driver_id, order_date, status, delivery_address) VALUES
(1, 1, 1, '2023-01-15 12:30:00', 'Delivered', '25 Opebi Road, Ikeja, Lagos'),
(2, 2, 2, '2023-01-16 13:45:00', 'Delivered', '14A Ligali Ayorinde Street, Victoria Island, Lagos'),
(3, 3, 3, '2023-01-17 18:20:00', 'Delivered', '7 Bode Thomas Close, Surulere, Lagos'),
(4, 4, 4, '2023-01-18 19:10:00', 'Delivered', 'Plot 56, Central Area, Abuja'),
(5, 5, 5, '2023-01-19 20:05:00', 'Delivered', '18 Aminu Kano Crescent, Wuse 2, Abuja'),
(6, 6, 6, '2023-01-20 12:15:00', 'In Transit', '42 Allen Avenue, Ikeja, Lagos'),
(7, 7, 7, '2023-01-21 14:30:00', 'Ready', '33A Adetokunbo Ademola Street, Victoria Island, Lagos'),
(8, 8, 8, '2023-01-22 17:45:00', 'Preparing', '19 Bode Thomas Street, Surulere, Lagos'),
(9, 9, 9, '2023-01-23 18:50:00', 'Pending', 'Plot 89, Maitama, Abuja'),
(10, 10, 10, '2023-01-24 19:30:00', 'Pending', '22 Shehu Shagari Way, Abuja'),
(11, 11, 11, '2023-01-25 12:00:00', 'Delivered', '15A Adeola Odeku Street, Victoria Island, Lagos'),
(12, 12, 12, '2023-01-26 13:15:00', 'Delivered', '8 Etim Inyang Crescent, Victoria Island, Lagos'),
(13, 1, 13, '2023-01-27 14:30:00', 'In Transit', '30 Opebi Road, Ikeja, Lagos'),
(14, 2, 14, '2023-01-28 15:45:00', 'Ready', '25A Ahmadu Bello Way, Victoria Island, Lagos'),
(15, 3, 1, '2023-01-29 16:00:00', 'Preparing', '5 Bode Thomas Street, Surulere, Lagos'),
(1, 4, 2, '2023-01-30 17:15:00', 'Pending', 'Plot 78, Central Business District, Abuja'),
(2, 5, 3, '2023-01-31 18:30:00', 'Pending', '14 Adetokunbo Ademola Street, Wuse 2, Abuja'),
(3, 6, 4, '2023-02-01 19:45:00', 'Delivered', '50 Allen Avenue, Ikeja, Lagos'),
(4, 7, 5, '2023-02-02 20:00:00', 'Delivered', '12B Sanusi Fafunwa Street, Victoria Island, Lagos'),
(5, 8, 6, '2023-02-03 12:15:00', 'In Transit', '22 Bode Thomas Street, Surulere, Lagos'),
(6, 9, 7, '2023-02-04 13:30:00', 'Ready', 'Plot 45, Maitama, Abuja'),
(7, 10, 8, '2023-02-05 14:45:00', 'Preparing', '18 Shehu Shagari Way, Abuja'),
(8, 11, 9, '2023-02-06 15:00:00', 'Pending', '10A Adeola Odeku Street, Victoria Island, Lagos'),
(9, 12, 10, '2023-02-07 16:15:00', 'Pending', '4 Etim Inyang Crescent, Victoria Island, Lagos'),
(10, 1, 11, '2023-02-08 17:30:00', 'Delivered', '35 Opebi Road, Ikeja, Lagos'),
(11, 2, 12, '2023-02-09 18:45:00', 'Delivered', '30A Ahmadu Bello Way, Victoria Island, Lagos'),
(12, 3, 13, '2023-02-10 19:00:00', 'In Transit', '8 Bode Thomas Street, Surulere, Lagos'),
(13, 4, 14, '2023-02-11 12:30:00', 'Ready', 'Plot 67, Central Business District, Abuja'),
(14, 5, 1, '2023-02-12 13:45:00', 'Preparing', '20 Adetokunbo Ademola Street, Wuse 2, Abuja'),
(15, 6, 2, '2023-02-13 14:00:00', 'Pending', '55 Allen Avenue, Ikeja, Lagos');

-- Inserting into orderitem table
INSERT INTO Order_Items (order_id, item_id, quantity, price_at_order) VALUES
(1, 1, 2, 1600.00), (1, 4, 1, 1300.00), (1, 11, 2, 450.00),
(2, 2, 1, 1650.00), (2, 6, 1, 1850.00), (2, 12, 1, 625.00),
(3, 3, 1, 2100.00), (3, 5, 2, 1050.00), (3, 9, 3, 525.00),
(4, 7, 2, 1550.00), (4, 8, 1, 1250.00), (4, 10, 4, 325.00),
(5, 14, 1, 1850.00), (5, 15, 1, 2050.00), (5, 12, 2, 625.00),
(6, 1, 1, 1600.00), (6, 6, 1, 1900.00), (6, 11, 1, 450.00),
(7, 2, 2, 1650.00), (7, 7, 1, 1550.00), (7, 12, 1, 625.00),
(8, 3, 1, 2100.00), (8, 4, 1, 1250.00), (8, 9, 2, 525.00),
(9, 5, 3, 1050.00), (9, 8, 1, 1250.00), (9, 10, 5, 325.00),
(10, 14, 2, 1850.00), (10, 13, 1, 825.00), (10, 11, 2, 425.00);