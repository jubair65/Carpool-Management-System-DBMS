USE Carpool
GO
-- User Data
INSERT INTO [User] (user_id, nid, first_name, last_name, email, phone_number, password_hash) VALUES
(1, '1995123456', 'Rahim', 'Ahmed', 'rahim.a@email.com', '01711223344', 'e10adc3949'),
(2, '1988765432', 'Fatima', 'Begum', 'fatima.b@email.com', '01822334455', 'f379eaf3c8'),
(3, '2001987654', 'Kamal', 'Hossain', 'kamal.h@email.com', '01933445566', '5170365a68'),
(4, '1990112233', 'Anika', 'Chowdhury', 'anika.c@email.com', '01644556677', '8a5433a388'),
(5, '1985445566', 'Tariq', 'Khan', 'tariq.k@email.com', '01555667788', 'd8578edf84'),
(6, '1992778899', 'Sadia', 'Islam', 'sadia.i@email.com', '01766778899', '1679091c5a'),
(7, '1980101010', 'Jamal', 'Uddin', 'jamal.u@email.com', '01877889900', '25d55ad283'),
(8, '2000202020', 'Nusrat', 'Jahan', 'nusrat.j@email.com', '01988990011', 'e99a18c428'),
(9, '1998303030', 'Iqbal', 'Mahmud', 'iqbal.m@email.com', '01699001122', 'c333677015'),
(10,'1987404040', 'Rifat', 'Sheikh', 'rifat.s@email.com', '01500112233', '900150983c'),
(11,'1993505050', 'Sumaiya', 'Akter', 'sumaiya.a@email.com', '01712345678', '02c75fb22c'),
(12,'1989606060', 'Hasan', 'Mahmud', 'hasan.m@email.com', '01823456789', 'fcea920f74'),
(13,'2002707070', 'Farhana', 'Yasmin', 'farhana.y@email.com', '01934567890', 'a3dcb4d229'),
(14,'1996808080', 'Arif', 'Rahman', 'arif.r@email.com', '01645678901', '7694f4a663'),
(15, '1984909090', 'Nazmul', 'Sarkar', 'nazmul.s@email.com', '01556789012', '1f32aa4c9a'),
(16, '1999121212', 'Sharmin', 'Sultana', 'sharmin.s@email.com', '01767890123', '4e4d6c332b'),
(17, '1986232323', 'Shakib', 'Hasan', 'shakib.h@email.com', '01878901234', 'b59c67bf19'),
(18, '2003343434', 'Ayesha', 'Siddika', 'ayesha.s@email.com', '01989012345', 'c56d0e9a7c'),
(19, '1991454545', 'Mehedi', 'Hasan', 'mehedi.h@email.com', '01690123456', '5f4dcc3b5a'),
(20, '1982565656', 'Tasnim', 'Ferdous', 'tasnim.f@email.com', '01501234567', '3d2172418e');

-- Location data
INSERT INTO Location  VALUES
(101, 'Abdullahpur Bus Stand, Uttara, Dhaka', 23.8794, 90.4005),
(102, 'Jatrabari Chowrasta, Dhaka', 23.7099, 90.4333),
(103, 'Uttara Sector 6 Park, Dhaka', 23.8647, 90.3989),
(104, 'Hazrat Shahjalal International Airport, Dhaka', 23.8433, 90.4043),
(105, 'Jamuna Future Park, Bashundhara, Dhaka', 23.8133, 90.4243),
(106, 'Banani Road 11, Dhaka', 23.7942, 90.4069),
(107, 'Gulshan 2 Circle, Dhaka', 23.7925, 90.4183),
(108, 'Mohakhali Bus Terminal, Dhaka', 23.7820, 90.4048),
(109, 'Farmgate, Tejgaon, Dhaka', 23.7595, 90.3892),
(110, 'Dhanmondi 32 Bridge, Dhaka', 23.7533, 90.3813),
(111, 'Mohammadpur Town Hall, Dhaka', 23.7644, 90.3667),
(112, 'New Market, Dhaka', 23.7346, 90.3876),
(113, 'Shahbag Intersection, Dhaka', 23.7410, 90.3958),
(114, 'Motijheel Shapla Chattar, Dhaka', 23.7259, 90.4172),
(115, 'Sadarghat Launch Terminal, Dhaka', 23.7067, 90.4099);

-- Passenger Data
INSERT INTO Passenger  VALUES
(1, 1, 450.50, 101),
(3, 1, 1200.00, 103),
(5, 0, 125.75, 105),
(7, 1, 880.90, 107),
(9, 0, 50.00, 109),
(11, 1, 200.00, 111),
(13, 0, 150.50, 113),
(15, 1, 999.99, 115),
(16, 1, 300.00, 101),
(19, 1, 110.00, 105);

-- Driver Data
INSERT INTO Driver
VALUES
(2, 'BD-012345678', 4.8, 1, 110, 5500.25, 102),
(4, 'BD-023456789', 4.5, 1, 90, 3200.50, 104),
(6, 'BD-034567890', 4.2, 1, 50, 1500.00, 106),
(8, 'BD-045678901', 4.9, 1, 200, 8750.80, 108),
(10, 'BD-056789012', 4.1, 1, 30, 950.00, 110),
(12, 'BD-067890123', 4.7, 1, 150, 6000.00, 112),
(14, 'BD-078901234', 4.3, 1, 75, 2550.00, 114),
(17, 'BD-089012345', 4.6, 1, 120, 4300.00, 102),
(18, 'BD-090123456', 4.4, 1, 100, 3850.00, 103),
(20, 'BD-101234567', 4.0, 1, 65, 2100.00, 106);

-- Vehicle Data
INSERT INTO Vehicle VALUES
(1, 2, 'Toyota', 'Premio', 2018, 'Dhaka Metro-Ga 35-1121', 'Silver', 'Sedan', 4),
(2, 4, 'Toyota', 'Aqua', 2019, 'Dhaka Metro-Kha 22-3456', 'White', 'Hybrid', 4),
(3, 6, 'Honda', 'Vezel', 2020, 'Dhaka Metro-Gha 41-7890', 'Black', 'SUV', 5),
(4, 8, 'Toyota', 'Allion', 2017, 'Ctg Metro-Ka 19-2345', 'Red', 'Sedan', 4),
(5, 10, 'Toyota', 'HiAce', 2019, 'Dhaka Metro-Cha 53-6789', 'White', 'Microbus', 11),
(6, 12, 'Mitsubishi', 'Outlander', 2021, 'Dhaka Metro-Gha 45-1011', 'Grey', 'SUV', 6),
(7, 14, 'Toyota', 'Axio', 2020, 'Dhaka Metro-Ga 39-2122', 'Black', 'Sedan', 4),
(8, 17, 'Suzuki', 'Swift', 2022, 'Dhaka Metro-Ka 28-3233', 'Blue', 'Hatchback', 4),
(9, 18, 'Nissan', 'X-Trail', 2018, 'Dhaka Metro-Gha 33-4344', 'Pearl White', 'SUV', 5),
(10, 20, 'Honda', 'Grace', 2019, 'Dhaka Metro-Kha 25-5455', 'Silver', 'Hybrid', 4);

-- Support Team data
INSERT INTO Support_Team  VALUES
('Karim', 'Hossain', 'k.hossain@support.com', 'Tier 1 Agent'),
('Tasnia', 'Begum', 't.begum@support.com', 'Tier 2 Specialist'),
('Imran', 'Khan', 'i.khan@support.com', 'Manager'),
('Sadia', 'Akter', 's.akter@support.com', 'Tier 1 Agent'),
('Jamil', 'Ahmed', 'j.ahmed@support.com', 'Tier 1 Agent'),
('Afsana', 'Chowdhury', 'a.chowdhury@support.com', 'Tier 2 Specialist'),
('Rohan', 'Islam', 'r.islam@support.com', 'Tier 1 Agent'),
('Maria', 'Rahman', 'm.rahman@support.com', 'Tier 1 Agent'),
('Faisal', 'Haque', 'f.haque@support.com', 'Tier 2 Specialist'),
('Farhana', 'Sultana', 'f.sultana@support.com', 'Manager');