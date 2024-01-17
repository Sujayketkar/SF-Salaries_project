--Show rows and columns in the dataset

SELECT * FROM Salaries s;

--How many unique Job Tiltes and what are they?

SELECT COUNT(DISTINCT JobTitle) 
FROM Salaries s;

--Show number of employees in the table

SELECT COUNT(*) FROM Salaries s;

--show unique job titles

SELECT COUNT(DISTINCT JobTitle) FROM Salaries s;
SELECT DISTINCT(JobTitle) FROM Salaries s;

--Employees who receive overtime pay morethan 50000 and how may of them & what is their Job Title?


SELECT COUNT(EmployeeName)  FROM Salaries s 
WHERE OvertimePay>50000;

SELECT EmployeeName, JobTitle, OvertimePay  FROM Salaries s 
WHERE OvertimePay>50000;

--show average base pay for all employees

SELECT AVG(BasePay) FROM Salaries s;

--show the highest top 10 paid employees

SELECT EmployeeName, TotalPay  FROM Salaries s 
ORDER BY TotalPay DESC 
LIMIT 10;

--show average of BasePay, Overtime Pay, other pay for each employee

SELECT EmployeeName, (BasePay+OvertimePay+OtherPay)/3  as avg_all_emp
FROM Salaries s;

--Show all employees who have Manager in their title

SELECT EmployeeName, JobTitle  
FROM Salaries s 
WHERE JobTitle 	LIKE '%Manager%';


--show all employees with a total pay between 50000 and 75000.

SELECT * FROM Salaries s 
WHERE TotalPay>=50000 and TotalPay<=75000;

SELECT * FROM Salaries s 
WHERE TotalPay BETWEEN 50000 and 75000;

--employees with Base PAY less than 50000 and greater than 150000

SELECT EmployeeName, BasePay  FROM Salaries s 
WHERE BasePay < 50000 OR BasePay >=100000;

--Show all job titles with averaage base pay of 100000.

SELECT JobTitle, AVG(BasePay)  FROM Salaries s 
group by JobTitle
HAVING AVG(BasePay)>=100000
ORDER BY AVG(BasePay) DESC 

--UPDATE ALL MANAGER TITLE SALARY BY 10%

UPDATE Salaries 
SET  BasePay =BasePay *1.1
WHERE JobTitle LIKE '%MANAGER%'

--DELETE ALL EMPLOYEES WITH NO OVERTIME PAY

SELECT * FROM Salaries s 
WHERE OvertimePay =0

SELECT COUNT(*) FROM Salaries s 	
WHERE OvertimePay=0;
DELETE FROM Salaries
WHERE OvertimePay =0;

SELECT * FROM Salaries s;

SELECT DISTINCT (YEAR) FROM Salaries s 



