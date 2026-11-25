CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    Name         VARCHAR(50) NOT NULL,
    ParentID     INT REFERENCES Department(DepartmentID)  -- recursive FK, NULL for roots
);


CREATE TABLE Product (
    Product ID INT PRIMARY KEY,
    Product name VARCHAR(50) NOT NULL,
    Stock Quantity INT NOT NULL NOT NEGATIVE,
    Description VARCHAR(200) NOT NULL,
    Featured BOOLEAN DEFAULT FALSE NOT NULL,
    FOREGIN KEY (Departement ID) REFERENCE Departement(Depertement ID)
);

##hejhej
