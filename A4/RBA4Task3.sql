SELECT '' AS 'Randy Bimm';
SELECT '' AS 'PROG2220: Section 1';
SELECT '' AS 'Assignment 4: Task 3';

SELECT SYSDATE() AS 'Current System Date';

USE swexpert;

SELECT '';
SELECT '' AS '*** Task 3, Q1. SWE Exercise 1 [4 points] ***';

ALTER TABLE project_consultant
ADD total_days INT DEFAULT 0;

UPDATE project_consultant
SET total_days = (roll_off_date - roll_on_date);
SELECT ROW_COUNT() AS 'UPDATE Rows affected';

SELECT * FROM project_consultant;

ALTER TABLE project_consultant
DROP COLUMN total_days; 

SELECT '';
SELECT '' AS '*** Task 3, Q2. SWE Exercise 2 [4 points] ***';

DROP TABLE IF EXISTS evaluation_audit; 

CREATE TABLE evaluation_audit
(
	audit_id	INT			AUTO_INCREMENT 		UNIQUE 		PRIMARY KEY,
    audit_e_id	INT			NOT NULL,
    audit_score	INT,
    audit_user	VARCHAR(20)
);

INSERT INTO evaluation_audit VALUES
(DEFAULT, 100, 90, null);
SELECT ROW_COUNT() AS 'INSERT Rows affected';

SELECT * FROM evaluation_audit;


SELECT '';
SELECT '' AS '*** Task 3, Q3. SWE Exercise 3 [5 points] ***';

UPDATE evaluation_audit
SET audit_user = ''
WHERE audit_user IS NULL;
ALTER TABLE evaluation_audit
MODIFY audit_user VARCHAR(20) NOT NULL;

ALTER TABLE evaluation_audit
ADD audit_date DATE;

INSERT INTO evaluation_audit VALUES
(DEFAULT, 100, 99, USER(), SYSDATE());
SELECT ROW_COUNT() AS 'INSERT Rows affected';

SELECT * FROM evaluation_audit;

INSERT INTO evaluation_audit VALUES
(DEFAULT, 100, 99, NULL, NULL);
SELECT ROW_COUNT() AS 'INSERT Rows affected';


SELECT '';
SELECT '' AS '*** Task 3, Q4. SWE Exercise 4 [1 points] ***';
INSERT INTO project_skill VALUES
(DEFAULT,null);
SELECT ROW_COUNT() AS 'INSERT Rows affected';

SELECT '';
SELECT '' AS '*** Task 3, Q5. SWE Exercise 5 [2 points] ***';
DELETE FROM consultant
WHERE c_id = 103;
SELECT ROW_COUNT() AS 'DELETE Rows affected';