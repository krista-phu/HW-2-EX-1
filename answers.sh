SELECT Name FROM Students;
SELECT * FROM Students WHERE Age > 30;
SELECT Name FROM Students WHERE Gender = 'F' AND Age = 30;
SELECT Points FROM Students WHERE Name = 'Alex';
INSERT INTO Students VALUES(7, 'krista', '22', 'F', 500);
UPDATE Students SET Points = 400 WHERE Name = 'Basma';
UPDATE Students SET Points = 100 WHERE Name = 'Alex';

CREATE TABLE graduates(
    ID INTEGER  PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
    Age INTEGER,
    Gender TEXT,
    Points INTEGER,
    Graduation TEXT
);

INSERT INTO graduates(ID, Name, Age, Gender, Points) SELECT * FROM Students WHERE Name = 'Layal';
UPDATE graduates SET Graduation = '08-09-2018' WHERE Name = 'Layal';
DELETE FROM students WHERE Name = 'Layal';

SELECT employees.name, employees.Company, companies.date FROM employees Inner join companies ON employees.Company = companies.name;
SELECT name FROM employees Inner join companies ON employees.Company = companies.name and companies.Date < 2000;
SELECT companies.name FROM companies Inner join employees ON employees.Company = companies.name and employees.Role = 'Graphic Designer';

SELECT Name from students where points = (SELECT MAX(points) from students);
SELECT AVG(points) from students;
SELECT COUNT(Name) from students where points = 500;
SELECT Name from students WHERE Name LIKE '%s%';
SELECT Name from students ORDER BY points DESC;