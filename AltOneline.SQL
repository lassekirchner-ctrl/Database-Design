CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    Name         VARCHAR(50) NOT NULL,
    ParentID     INT REFERENCES Department(DepartmentID)  -- recursive FK, NULL for roots
);


CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Product name VARCHAR(50) NOT NULL,
    StockQuantity INT NOT NULL NOT NEGATIVE,
    Description VARCHAR(200) NOT NULL,
    Featured BOOLEAN DEFAULT FALSE NOT NULL,
    FOREGIN KEY (DepartementID) REFERENCE Departement(DepertementID)
);



CREATE TABLE Review (
    Review_ID INT PRIMARY KEY,
    Comment VARCHAR (200),
    ReviewDate DATE NOT NULL, 
    Rating INT NOT NULL CHECK (Rating BETWEEN 1 AND 5),
    UserID REFERENCES AppUser(UserID),
    ProductID INT NOT NULL References Product(Product ID)
);


CREATE TABLE App_User(
    Newsletter BOOLEAN DEFAULT FALSE NOT NULL,
    User,
    SSN INT NOT NULL,
)