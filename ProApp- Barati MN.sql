-- Create USER table
CREATE TABLE USER (
    UserID VARCHAR(9) PRIMARY KEY,
    UserName VARCHAR(100),
    UserAddress VARCHAR(100),
    UserRating DECIMAL(3,2),
    UserPhone VARCHAR(20),
    UserEmail VARCHAR(100)
);

-- Insert dummy data
INSERT INTO USER (UserID, UserName, UserAddress, UserRating, UserPhone, UserEmail)
VALUES
('USR205B89', 'Emily Rodriguez', 'Bondi, NSW', 4.7, '0412 345 678', 'emily.r@example.com.au'),
('USR310C45', 'James O''Connor', 'St Kilda, VIC', 4.9, '0423 456 789', 'james.oc@example.com.au'),
('USR415D67', 'Sarah Chen', 'West End, QLD', 4.5, '0434 567 890', 'sarah.c@example.com.au'),
('USR520E23', 'Michael Nguyen', 'Fremantle, WA', 4.8, '0445 678 901', 'michael.n@example.com.au'),
('USR625F89', 'Olivia Thompson', 'Nightcliff, NT', 4.6, '0456 789 012', 'olivia.t@example.com.au'),
('USR730G34', 'Liam Patel', 'North Hobart, TAS', 4.4, '0467 890 123', 'liam.p@example.com.au'),
('USR835H56', 'Emma Wilson', 'Glenelg, SA', 4.9, '0478 901 234', 'emma.w@example.com.au'),
('USR940I78', 'Noah Taylor', 'Manly, NSW', 4.7, '0489 012 345', 'noah.t@example.com.au'),
('USR045J12', 'Sophia Lee', 'Southbank, VIC', 4.8, '0490 123 456', 'sophia.l@example.com.au'),
('USR150K90', 'William Brown', 'New Farm, QLD', 4.5, '0401 234 567', 'william.b@example.com.au');

-- Create TASKER table
CREATE TABLE TASKER (
    TaskerID VARCHAR(9) PRIMARY KEY,
    TaskerName VARCHAR(100),
    TaskerAddress VARCHAR(100),
    TaskerRating DECIMAL(3,2),
    TaskerNumber VARCHAR(20)
);

-- Insert dummy data
INSERT INTO TASKER (TaskerID, TaskerName, TaskerAddress, TaskerRating, TaskerNumber)
VALUES
('TSK301C24', 'Michael Chang', 'Carlton, VIC', 4.9, '0433 987 654'),
('TSK402D56', 'Jessica Smith', 'Newtown, NSW', 4.8, '0444 876 543'),
('TSK503E78', 'David Johnson', 'West End, QLD', 4.7, '0455 765 432'),
('TSK604F90', 'Ava Williams', 'Northbridge, WA', 4.9, '0466 654 321'),
('TSK705G12', 'Ethan Brown', 'Darwin City, NT', 4.6, '0477 543 210'),
('TSK806H34', 'Chloe Davis', 'Battery Point, TAS', 4.8, '0488 432 109'),
('TSK907I56', 'Ryan Wilson', 'North Adelaide, SA', 4.7, '0499 321 098'),
('TSK008J78', 'Isabella Thomas', 'Surry Hills, NSW', 4.9, '0400 210 987'),
('TSK109K90', 'Daniel Lee', 'South Yarra, VIC', 4.8, '0411 109 876'),
('TSK210L12', 'Mia Garcia', 'Fortitude Valley, QLD', 4.7, '0422 098 765');

-- Create SUPPLIER table
CREATE TABLE SUPPLIER (
    SupplierID VARCHAR(8) PRIMARY KEY,
    SupplierName VARCHAR(100),
    SupplierAddress VARCHAR(100),
    SupplierEmail VARCHAR(100),
    SupplierNumber VARCHAR(20)
);

-- Insert dummy data
INSERT INTO SUPPLIER (SupplierID, SupplierName, SupplierAddress, SupplierEmail, SupplierNumber)
VALUES
('SUP78A23', 'TechPro Solutions', 'Chatswood, NSW', 'sales@techprosolutions.com.au', '02 9876 5432'),
('SUP45B67', 'Aussie Hardware Co', 'Richmond, VIC', 'info@aussiehardware.com.au', '03 8765 4321'),
('SUP12C89', 'Green Thumb Nursery', 'Toowoomba, QLD', 'orders@greenthumb.com.au', '07 5432 1098'),
('SUP90D34', 'Gourmet Delights', 'Fremantle, WA', 'sales@gourmetdelights.com.au', '08 6543 2109'),
('SUP56E78', 'Outback Outdoor Gear', 'Alice Springs, NT', 'support@outbackgear.com.au', '08 8765 4321'),
('SUP23F12', 'Coastal Seafoods', 'Hobart, TAS', 'orders@coastalseafoods.com.au', '03 6543 2109'),
('SUP89G45', 'Metro Office Supplies', 'Adelaide, SA', 'sales@metrooffice.com.au', '08 8234 5678'),
('SUP34H67', 'Eco Friendly Packaging', 'Byron Bay, NSW', 'info@ecofriendly.com.au', '02 6543 2109'),
('SUP01I89', 'Aussie Sports Gear', 'Gold Coast, QLD', 'support@aussiesports.com.au', '07 5678 9012'),
('SUP67J23', 'Outback Auto Parts', 'Broken Hill, NSW', 'parts@outbackauto.com.au', '08 8098 7654');

-- Create SERVICE table
CREATE TABLE SERVICE (
    ServiceID VARCHAR(9) PRIMARY KEY,
    CategoryID VARCHAR(9),
    ServiceName VARCHAR(100),
    ServiceDescription VARCHAR(500),
    FOREIGN KEY (CategoryID) REFERENCES CATEGORY(CategoryID)
);

-- Insert dummy data
INSERT INTO SERVICE (ServiceID, CategoryID, ServiceName, ServiceDescription)
VALUES
('SRV405D56', 'CAT308E89', 'Smartphone Screen Repair', 'Professional repair service for cracked or damaged smartphone screens, compatible with most models.'),
('SRV506E78', 'CAT308E89', 'Laptop Battery Replacement', 'Expert replacement of laptop batteries to extend device lifespan and improve performance.'),
('SRV607F90', 'CAT409F12', 'House Cleaning', 'Thorough cleaning of homes, including dusting, vacuuming, and sanitizing of all surfaces.'),
('SRV708G12', 'CAT409F12', 'Garden Maintenance', 'Comprehensive garden care including mowing, pruning, and plant care.'),
('SRV809H34', 'CAT510G34', 'Personal Training', 'Customized fitness programs and one-on-one training sessions to help achieve health goals.'),
('SRV910I56', 'CAT510G34', 'Nutritional Counseling', 'Expert advice on diet and nutrition for better health and wellness.'),
('SRV011J78', 'CAT611H56', 'Web Design', 'Custom website design and development services for businesses and individuals.'),
('SRV112K90', 'CAT611H56', 'Social Media Management', 'Comprehensive social media strategy and content creation for brand growth.'),
('SRV213L12', 'CAT712I78', 'Pet Sitting', 'Reliable pet care services including feeding, walking, and companionship while owners are away.'),
('SRV314M34', 'CAT712I78', 'Dog Training', 'Professional dog training services for obedience, behavior modification, and socialization.');

-- Create CATEGORY table
CREATE TABLE CATEGORY (
    CategoryID VARCHAR(9) PRIMARY KEY,
    CategoryName VARCHAR(100)
);

-- Insert dummy data
INSERT INTO CATEGORY (CategoryID, CategoryName)
VALUES
('CAT308E89', 'Electronics Repair'),
('CAT409F12', 'Home Services'),
('CAT510G34', 'Health and Fitness'),
('CAT611H56', 'Digital Marketing'),
('CAT712I78', 'Pet Care'),
('CAT813J90', 'Education and Tutoring'),
('CAT914K12', 'Automotive Services'),
('CAT015L34', 'Event Planning'),
('CAT116M56', 'Legal Services'),
('CAT217N78', 'Financial Consulting');

-- Create TRANSACTION table
CREATE TABLE TRANSACTION (
    ServiceID VARCHAR(9),
    UserID VARCHAR(9),
    Date_Time DATETIME,
    UserRating DECIMAL(3,2),
    TaskerRating DECIMAL(3,2),
    Payment DECIMAL(10,2),
    PRIMARY KEY (ServiceID, UserID, Date_Time),
    FOREIGN KEY (ServiceID) REFERENCES SERVICE(ServiceID),
    FOREIGN KEY (UserID) REFERENCES USER(UserID)
);

-- Insert dummy data
INSERT INTO TRANSACTION (ServiceID, UserID, Date_Time, UserRating, TaskerRating, Payment)
VALUES
('SRV405D56', 'USR205B89', '2024-10-15 14:30:00', 4.8, 5.0, 89.99),
('SRV506E78', 'USR310C45', '2024-10-16 10:15:00', 4.7, 4.9, 129.50),
('SRV607F90', 'USR415D67', '2024-10-17 09:00:00', 4.9, 4.8, 75.00),
('SRV708G12', 'USR520E23', '2024-10-18 11:30:00', 4.6, 4.7, 60.00),
('SRV809H34', 'USR625F89', '2024-10-19 16:45:00', 5.0, 4.9, 85.00),
('SRV910I56', 'USR730G34', '2024-10-20 13:00:00', 4.8, 5.0, 110.00),
('SRV011J78', 'USR835H56', '2024-10-21 15:30:00', 4.7, 4.8, 250.00),
('SRV112K90', 'USR940I78', '2024-10-22 10:00:00', 4.9, 4.7, 180.00),
('SRV213L12', 'USR045J12', '2024-10-23 08:45:00', 4.8, 4.9, 45.00),
('SRV314M34', 'USR150K90', '2024-10-24 14:15:00', 4.7, 5.0, 95.00);

-- Create TASKER-SERVICE table
CREATE TABLE TASKER_SERVICE (
    ServiceID VARCHAR(9),
    TaskerID VARCHAR(9),
    Date_Time DATETIME,
    PRIMARY KEY (ServiceID, TaskerID, Date_Time),
    FOREIGN KEY (ServiceID) REFERENCES SERVICE(ServiceID),
    FOREIGN KEY (TaskerID) REFERENCES TASKER(TaskerID)
);

-- Insert dummy data
INSERT INTO TASKER_SERVICE (ServiceID, TaskerID, Date_Time)
VALUES
('SRV405D56', 'TSK301C24', '2024-10-15 14:30:00'),
('SRV506E78', 'TSK402D56', '2024-10-16 10:15:00'),
('SRV607F90', 'TSK503E78', '2024-10-17 09:00:00'),
('SRV708G12', 'TSK604F90', '2024-10-18 11:30:00'),
('SRV809H34', 'TSK705G12', '2024-10-19 16:45:00'),
('SRV910I56', 'TSK806H34', '2024-10-20 13:00:00'),
('SRV011J78', 'TSK907I56', '2024-10-21 15:30:00'),
('SRV112K90', 'TSK008J78', '2024-10-22 10:00:00'),
('SRV213L12', 'TSK109K90', '2024-10-23 08:45:00'),
('SRV314M34', 'TSK210L12', '2024-10-24 14:15:00');

-- The service categories in high demand
SELECT c.CategoryName, COUNT(*) AS TotalTransactions
FROM Category c
JOIN Service s ON c.CategoryID = s.CategoryID
JOIN Transaction t ON s.ServiceID = t.ServiceID
GROUP BY c.CategoryName
ORDER BY TotalTransactions DESC;

-- The service categories that generate the most revenue
SELECT c.CategoryName, SUM(t.Payment) AS TotalRevenue
FROM Category c
JOIN Service s ON c.CategoryID = s.CategoryID
JOIN Transaction t ON s.ServiceID = t.ServiceID
GROUP BY c.CategoryName
ORDER BY TotalRevenue DESC;

-- Service categories with the highest average tasker rating
SELECT c.CategoryName, AVG(t.TaskerRating) AS AverageTaskerRating
FROM Category c
JOIN Service s ON c.CategoryID = s.CategoryID
JOIN Transaction t ON s.ServiceID = t.ServiceID
GROUP BY c.CategoryName
ORDER BY AverageTaskerRating DESC;

-- Service categories with the lowest tasker rating
SELECT c.CategoryName, AVG(t.TaskerRating) AS AverageTaskerRating
FROM Category c
JOIN Service s ON c.CategoryID = s.CategoryID
JOIN Transaction t ON s.ServiceID = t.ServiceID
GROUP BY c.CategoryName
ORDER BY AverageTaskerRating ASC;

-- Average rating for a tasker
SELECT AVG(t.TaskerRating) AS AverageTaskerRating
FROM Transaction t;

-- Average rating for a user
SELECT AVG(t.UserRating) AS AverageUserRating
FROM Transaction t;


