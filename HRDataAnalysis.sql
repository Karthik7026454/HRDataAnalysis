USE project_hr_analytics;
SELECT * FROM HR;
DESCRIBE HR;
SELECT 
  SUM(CASE WHEN birthdate IS NULL THEN 1 ELSE 0 END) AS null_birthdate,
  SUM(CASE WHEN race IS NULL THEN 1 ELSE 0 END) AS null_race,
  SUM(CASE WHEN department IS NULL THEN 1 ELSE 0 END) AS null_department,
  SUM(CASE WHEN jobtitle IS NULL THEN 1 ELSE 0 END) AS null_jobtitle,
  SUM(CASE WHEN location IS NULL THEN 1 ELSE 0 END) AS null_location,
  SUM(CASE WHEN hire_date IS NULL THEN 1 ELSE 0 END) AS null_hire_date,
  SUM(CASE WHEN termdate IS NULL THEN 1 ELSE 0 END) AS null_termdate
FROM HR;

SELECT department, COUNT(*) AS total_employees
FROM HR
GROUP BY department
ORDER BY total_employees DESC;

SELECT jobtitle, COUNT(*) AS total
FROM HR
GROUP BY jobtitle
ORDER BY total DESC;

SELECT race, COUNT(*) AS total
FROM HR
GROUP BY race;

SELECT 
  CASE 
    WHEN termdate IS NULL OR termdate = '' THEN 'Active'
    ELSE 'Terminated'
  END AS employment_status,
  COUNT(*) AS total
FROM HR
GROUP BY employment_status;


SELECT first_name, last_name, birthdate, COUNT(*) as count
FROM HR
GROUP BY first_name, last_name, birthdate
HAVING count > 1;

SELECT * FROM HR
WHERE hire_date > '2020-01-01';

SELECT *,
  TIMESTAMPDIFF(MONTH, hire_date, termdate) AS months_worked
FROM HR
WHERE termdate IS NOT NULL AND TIMESTAMPDIFF(MONTH, hire_date, termdate) < 12;

SELECT location_state, COUNT(*) AS total
FROM HR
GROUP BY location_state
ORDER BY total DESC;

SELECT * FROM HR;

SELECT * FROM HR WHERE age >30;
SELECT * FROM HR WHERE age between 30 and 40;


SELECT GENDER, COUNT(*) AS total
FROM HR
GROUP BY gender;

SELECT department
FROM HR
WHERE department = "Sales";

SELECT *
FROM HR
WHERE department = 'IT';


SELECT id,first_name,Age,gender,department from HR;

SELECT * FROM HR;




