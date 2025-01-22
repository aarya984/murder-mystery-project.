CREATE DATABASE SQLCity;
USE SQLCity;
CREATE TABLE Crimes (
    crime_id INT PRIMARY KEY AUTO_INCREMENT,
    crime_type VARCHAR(50),
    location VARCHAR(100),
    date_time DATETIME,
    status VARCHAR(20)
);
CREATE TABLE Witnesses (
    witness_id INT PRIMARY KEY AUTO_INCREMENT,
    crime_id INT,
    name VARCHAR(100),
    statement TEXT,
    contact_info VARCHAR(15),
    FOREIGN KEY (crime_id) REFERENCES Crimes(crime_id)
);
CREATE TABLE Suspects (
    suspect_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT,
    past_crimes TEXT,
    current_location VARCHAR(100)
);
CREATE TABLE Evidence (
    evidence_id INT PRIMARY KEY AUTO_INCREMENT,
    crime_id INT,
    description TEXT,
    collected_by VARCHAR(100),
    status VARCHAR(20),
    FOREIGN KEY (crime_id) REFERENCES Crimes(crime_id)
);
CREATE TABLE Locations (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR(200),
    neighborhood VARCHAR(100),
    surveillance_data TEXT
);
INSERT INTO Crimes (crime_type, location, date_time, status)
VALUES
('Murder', 'Marine Drive', '2025-01-15 21:00:00', 'Open'),
('Robbery', 'Crawford Market', '2025-01-14 18:30:00', 'Solved');
INSERT INTO Witnesses (crime_id, name, statement, contact_info)
VALUES
(1, 'Rahul Sharma', 'I saw a man arguing loudly with the victim before they left.', '9876543210'),
(1, 'Anjali Mehta', 'There was someone in a black jacket running toward the promenade.', '9988776655');
INSERT INTO Suspects (name, description, past_crimes, current_location)
VALUES
('Arjun Singh', 'Tall, black jacket, stubble', 'Assault, Theft', 'Colaba'),
('Priya Iyer', 'Medium height, wearing a blue dress', 'None', 'Marine Lines');
INSERT INTO Evidence (crime_id, description, collected_by, status)
VALUES
(1, 'A blood-stained knife found near the bench', 'Inspector Rajan Desai', 'Collected'),
(1, 'CCTV footage showing a man in a black jacket', 'Officer Neha Patil', 'Analyzed');
INSERT INTO Locations (address, neighborhood, surveillance_data)
VALUES
('Marine Drive Promenade', 'South Mumbai', 'CCTV shows suspect at 8:55 PM'),
('Crawford Market Lane', 'South Mumbai', 'No suspicious activity recorded');
SELECT name, statement
FROM Witnesses
WHERE crime_id = 1;
SELECT s.name, s.description
FROM Suspects s
JOIN Crimes c ON s.current_location = c.location
WHERE c.crime_id = 1;
SELECT s.name, s.description
FROM Suspects s
JOIN Crimes c ON s.current_location = c.location
WHERE c.crime_id = 1;
SELECT e.description, e.collected_by
FROM Evidence e
WHERE e.crime_id = 1;
SELECT l.address, l.surveillance_data
FROM Locations l
WHERE l.neighborhood = 'South Mumbai';









