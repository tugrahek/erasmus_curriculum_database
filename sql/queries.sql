SELECT
   c.course_code,
   c.course_name,
   s.lo_count AS learning_outcome_count
FROM course c
JOIN learning_outcome s
ON s.course_code = c.course_code
AND s.outcome_order = 0
WHERE s.lo_count >= 5
ORDER BY s.lo_count DESC, c.course_code;


SELECT
   s.sem_id,
   s.term_string,
   s.year_level,
   SUM(c.ects) AS total_ects
FROM semester s
JOIN course c
ON c.sem_id = s.sem_id
GROUP BY s.sem_id, s.term_string, s.year_level 
ORDER BY total_ects DESC, s.sem_id;


SELECT   course_type,
         COUNT(*) AS number_of_courses,
         AVG(ects) AS average_ects
FROM (SELECT c.course_code, c.ects, 'Compulsory' AS course_type
      FROM course c
      JOIN compulsory_course cc
      ON cc.course_code = c.course_code

      UNION ALL

     SELECT c.course_code, c.ects, 'Elective' AS course_type
     FROM course c
     JOIN elective_course ec
     ON ec.course_code = c.course_code
     ) t
GROUP BY course_type;


SELECT      
   D1.Dept_name AS Source_Dept,      
   D2.Dept_name AS Target_Dept,      
   ROUND(AVG(v.Total_Score), 2) AS Average_Compatibility_Score,     
   COUNT(*) AS Total_Evaluated_Pairs 
FROM View_Erasmus_Scoring_Logic v
JOIN COURSE c1 ON v.Home_Code = c1.Course_code 
JOIN DEPARTMENT d1 ON c1.Dept_code = d1.Dept_code 
JOIN COURSE c2 ON v.Target_Code = c2.Course_code 
JOIN DEPARTMENT d2 ON c2.Dept_code = d2.Dept_code 
GROUP BY D1.Dept_name, D2.Dept_name 
ORDER BY Average_Compatibility_Score DESC;



SELECT      
   C.Course_code AS Main_Course,      
   P.Prereq_code AS Prerequisite_Required,     
   U2.Uni_name AS Target_Uni,     
   COALESCE(v.Match_Category, 'No Match Found') AS Prereq_Match_Status 
FROM PREREQUISITE P 
JOIN COURSE C ON P.Course_code = C.Course_code 
CROSS JOIN UNIVERSITY U2 
LEFT JOIN View_Erasmus_Scoring_Logic v ON P.Prereq_code = v.Home_Code      
   AND v.Target_University = U2.Uni_name 
WHERE U2.Uni_name <> (SELECT Uni_name FROM UNIVERSITY JOIN DEPARTMENT ON 
UNIVERSITY.Uni_id = DEPARTMENT.Uni_id WHERE Dept_code = C.Dept_code) 
AND (v.Total_Score >= 50 OR v.Total_Score IS NULL);


SELECT
U.Uni_name,
D.Dept_name,
D.Web_site
FROM UNIVERSITY U
JOIN DEPARTMENT D ON U.Uni_id = D.Uni_id
ORDER BY U.Uni_name;


SELECT
C.Course_code,
C.Course_name,
S.Year_level,
S.Term_string
FROM COURSE C
JOIN SEMESTER S ON C.Sem_id = S.Sem_id
WHERE C.Is_active = TRUE;


SELECT
U.Uni_name,
D.Dept_name,
C.Course_code,
C.Course_name,
C.ECTS
FROM UNIVERSITY U
JOIN DEPARTMENT D ON U.Uni_id = D.Uni_id
JOIN COURSE C ON D.Dept_code = C.Dept_code
ORDER BY U.Uni_name, D.Dept_name;


SELECT
C.Course_code,
C.Course_name,
LO.Outcome_order,
LO.Learning_outcome
FROM COURSE C
JOIN COMPULSORY_COURSE CC ON C.Course_code = CC.Course_code
JOIN LEARNING_OUTCOME LO ON C.Course_code = LO.Course_code
WHERE CC.Is_department_core = TRUE
ORDER BY C.Course_code, LO.Outcome_order;


SELECT
C.Course_code AS Main_Course,
P.Prereq_code AS Required_Prerequisite,
S.Year_level,
S.Term_string
FROM COURSE C
JOIN PREREQUISITE P ON C.Course_code = P.Course_code
JOIN SEMESTER S ON C.Sem_id = S.Sem_id
ORDER BY S.Year_level, S.Semester_no;

