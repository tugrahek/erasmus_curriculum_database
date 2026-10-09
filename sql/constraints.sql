--check constaraints

ALTER TABLE COURSE
ADD CONSTRAINT check_hours
CHECK(COALESCE(Theory_hour,0)+COALESCE(Practice_hour,0)>=1);

ALTER TABLE PREREQUISITE 
ADD CONSTRAINT check_preq 
CHECK(Course_Code <> Prereq_code);

ALTER TABLE SEMESTER
ADD CONSTRAINT check_semester
CHECK(
	(Year_level = 1 AND Sem_id IN ('1','2')) OR
	(Year_level = 2 AND Sem_id IN ('3','4')) OR
	(Year_level = 3 AND Sem_id IN ('5','6')) OR
	(Year_level = 4 AND Sem_id IN ('7','8')) OR
	(Year_level IS NULL AND Sem_id = 'E')
);

ALTER TABLE COURSE
ADD CONSTRAINT check_ects
CHECK(ECTS BETWEEN 1 AND 30);
