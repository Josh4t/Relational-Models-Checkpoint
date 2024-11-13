-- Table for Hotel
CREATE TABLE Hotel (
    Hotel_ID INT PRIMARY KEY,
    Hotel_Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100)
);

-- Table for Room
CREATE TABLE Room (
    Room_ID INT PRIMARY KEY,
    Room_Number INT NOT NULL,
    Type VARCHAR(50),
    Hotel_ID INT,
    FOREIGN KEY (Hotel_ID) REFERENCES Hotel(Hotel_ID)
);

-- Table for Guest
CREATE TABLE Guest (
    Guest_ID INT PRIMARY KEY,
    Guest_Name VARCHAR(100) NOT NULL,
    Contact_Details VARCHAR(150)
);

-- Table for Booking (associative table for many-to-many relationship)
CREATE TABLE Booking (
    Booking_ID INT PRIMARY KEY,
    Guest_ID INT,
    Room_ID INT,
    CheckIn_Date DATE,
    CheckOut_Date DATE,
    FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID),
    FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID)
);
