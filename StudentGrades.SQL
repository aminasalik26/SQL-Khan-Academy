-- Create a table named "student_grades" to track student grades
CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    number_grade INTEGER,
    fraction_completed REAL);

-- Insert data into the "student_grades" table
-- Format: (name, number_grade, fraction_completed)
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 90, 0.805);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winnefer", 95, 0.901);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winsteen", 85, 0.906);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 66, 0.7054);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winster", 76, 0.5013);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winstonia", 82, 0.9045);
    
-- Select all rows and display the name, number_grade and percent_completed
-- Calculate percent_completed by multiplying and rounding the fraction_completed column   
SELECT name, number_grade, ROUND(100* fraction_completed)
AS percent_completed
FROM student_grades;


-- Create a table to show the count of students who have earned each letter_grade
-- Use CASE to determine the letter_grade based on number_grade
-- Use COUNT and GROUP BY to count students for each letter_grade
SELECT COUNT(*),
CASE
WHEN number_grade >90 THEN "A"
WHEN number_grade >80 THEN "B"
WHEN number_grade >70 THEN "C"
ELSE "F"
END AS "letter_grade"
FROM student_grades
GROUP BY letter_grade;
