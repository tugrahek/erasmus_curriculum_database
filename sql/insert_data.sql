--populating sample data

    --IEU

    INSERT INTO UNIVERSITY(Uni_id,Uni_name,Country)
    VALUES(1,'Izmir University of Economics','Turkey');

    INSERT INTO DEPARTMENT(Dept_code,Dept_name,Uni_id)
    VALUES('ENG','Software Engineering',1);

    INSERT INTO DEPARTMENT(Dept_code,Dept_name,Uni_id)
    VALUES('FENG','Software Engineering',1);

    INSERT INTO DEPARTMENT(Dept_code,Dept_name,Uni_id)
    VALUES('IUE','Software Engineering',1);

    INSERT INTO DEPARTMENT(Dept_code,Dept_name,Uni_id)
    VALUES('MATH','Software Engineering',1);

    INSERT INTO DEPARTMENT(Dept_code,Dept_name,Uni_id)
    VALUES('PHYS','Software Engineering',1);

    INSERT INTO DEPARTMENT(Dept_code,Dept_name,Uni_id)
    VALUES('SE','Software Engineering',1);

    INSERT INTO DEPARTMENT(Dept_code,Dept_name,Uni_id)
    VALUES('SFL','Software Engineering',1);

    INSERT INTO DEPARTMENT(Dept_code,Dept_name,Uni_id)
    VALUES('CE','Software Engineering',1);

    INSERT INTO DEPARTMENT(Dept_code,Dept_name,Uni_id)
    VALUES('HIST','Software Engineering',1);

    INSERT INTO semester (sem_id, term_string, year_level, semester_no) VALUES
    ('1', 'Fall',   1, 1),
    ('2', 'Spring', 1, 2),
    ('3', 'Fall',   2, 3),
    ('4', 'Spring', 2, 4),
    ('5', 'Fall',   3, 5),
    ('6', 'Spring', 3, 6),
    ('7', 'Fall',   4, 7),
    ('8', 'Spring', 4, 8);

    INSERT INTO SEMESTER(Sem_id)
    VALUES('E');

    INSERT INTO COURSE(Course_code,Course_name,Erasmus_eligibility,Description,Language,Theory_hour,Practice_hour,ECTS,Sem_id,Dept_code)
    VALUES('ENG 101','Academic Skills in English I',FALSE,'This course aims at preparing students to use academic skills in English.','English',2,2,3,'1','ENG');

    INSERT INTO COURSE(Course_code,Course_name,Erasmus_eligibility,Description,Language,Theory_hour,Practice_hour,ECTS,Sem_id,Dept_code)
    VALUES('FENG 101','Fundamentals of Engineering Culture',FALSE,'The aim of the course is to bring students to a level where they can comprehend the fundamentals of the engineering concept and problem-solving methods in engineering; ethical issues encountered in engineering practices; the environmental, social, and economic sustainability of engineering applications; their impacts on health and safety; how to conduct literature reviews; how to write scientific reports; the fundamentals of entrepreneurial engineering and project management; disaster awareness; the importance of lifelong learning; and the fundamentals of methods for accessing information.','English',2,0,4,'1','FENG');

    INSERT INTO COURSE(Course_code,Course_name,Erasmus_eligibility,Description,Language,Theory_hour,Practice_hour,ECTS,Books,Sem_id,Dept_code)
    VALUES('MATH 154','Calculus II',TRUE,'In this course, integration techniques and application of integration, Taylor and Maclaurin series and their applications, functions of several variables, their derivatives, integrals and applications are examined.','English',2,2,6,'R Robert A. Adams Christopher Essex Calculus "A complete course" 9th edition','2','MATH');

    INSERT INTO COURSE(Course_code,Course_name,Erasmus_eligibility,Description,Language,Theory_hour,Practice_hour,ECTS,Books,Sem_id,Dept_code)
    VALUES('PHYS 102','General Physics II',TRUE,'In this course, we will cover the topics of electric field and charge, Gauss’s law, electric potential, capacitance and dielectrics, current, resistance and electromotive force, direct-current circuits, magnetic field and magnetic field sources and induction.','English',2,2,6,'Douglas C. Giancoli Physics for Scientists and Engineers with Modern Physics and Mastering Physics 4th edn. (Pearson 2008)','2','PHYS');

    INSERT INTO COURSE(Course_code,Course_name,Erasmus_eligibility,Description,Language,Theory_hour,Practice_hour,ECTS,Books,Sem_id,Dept_code)
    VALUES('CE 221','Data Structures and Algorithms I',TRUE,'Algorithm analysis, linear data structures, trees, hashing, priority queues, sorting, and graph algorithms.','English',3,2,7,'M. A. Weiss, Data Structures and Algorithm Analysis in Java, 3/e, Pearson, 2012 ','3','CE');

    INSERT INTO COURSE(Course_code,Course_name,Erasmus_eligibility,Description,Language,Theory_hour,Practice_hour,ECTS,Books,Sem_id,Dept_code)
    VALUES('CE 223','Database Systems',TRUE,'Topics related to both database design and database programming are covered.','English',3,2,7,'J. D. Ullman. J. Widom. A First Course In Database Systems. 3/e. PrenticeHall. 2008','4','CE');

    INSERT INTO COURSE(Course_code,Course_name,Erasmus_eligibility,Description,Language,Theory_hour,Practice_hour,ECTS,Books,Sem_id,Dept_code)
    VALUES('SE 115','Introduction to Programming I',TRUE,'This course introduces the students to the fundamental concepts of programming using Java programming language.','English',2,2,6,'Java How to Program 10/e (Early Objects) Global Edition Paul Deitel Harvey Deitel Pearson ','1','SE');

    INSERT INTO COURSE(Course_code,Course_name,Erasmus_eligibility,Description,Language,Theory_hour,Practice_hour,ECTS,Sem_id,Dept_code)
    VALUES('HIST 100','Atatürk s Principles and Revolutionary History',FALSE,'This course provides a general information of the events from the end of the 19. century until the end of the Turkish War of Independence and the signing of the Treaty of Lausanne in 1923 and the following period until 1990S.','Turkish',4,0,4,'3','HIST');

    INSERT INTO COURSE(Course_code,Course_name,Erasmus_eligibility,Description,Language,Theory_hour,Practice_hour,ECTS,Sem_id,Dept_code)
    VALUES('FENG 345','Numerical Methods for Engineers I',TRUE,'In this course, students learn fundamental numerical techniques and computational methods to solve engineering problems involving equations, systems, approximation, and optimization.','English',2,2,7,'5','FENG');

    INSERT INTO COURSE(Course_code,Course_name,Erasmus_eligibility,Description,Language,Theory_hour,Practice_hour,ECTS,Books,Sem_id,Dept_code)
    VALUES('MATH 236','Engineering Statistics',TRUE,'This course focuses on sampling distributions, statistical estimation, hypothesis testing, simple and multiple linear regression. In addition, experimental design and applications of these methods to industrial systems engineering are discussed.','English',3,0,6,'Douglas C. Montgomery Geroge C. Runger Applied Statistics and Probability for Engineers 7th Ed. (United States of America: Wiley 2018)','6','MATH');

    INSERT INTO COURSE(Course_code,Course_name,Erasmus_eligibility,Description,Language,Theory_hour,Practice_hour,ECTS,Sem_id,Dept_code)
    VALUES('FENG 497','Multidisciplinary Engineering Projects',TRUE,'The student designs a project as part of a multidisciplinary team using the engineering techniques they have learned, performs its analysis, and prepares business plans. They are able to report the project details and present them using contemporary tools.','English',2,2,6,'7','FENG');

    INSERT INTO COURSE(Course_code,Course_name,Erasmus_eligibility,Description,Language,Theory_hour,Practice_hour,ECTS,Sem_id,Dept_code)
    VALUES('FENG 498','Engineering Capstone',TRUE,'Utilizing the engineering techniques acquired, the student collaborates within a multidisciplinary team to design a project, carry out its analysis, and develop business plans. The student is also caacpable of documenting the projects details and presenting them effectively using modern tools.','English',0,6,6,'8','FENG');

    INSERT INTO COURSE(Course_code,Course_name,Erasmus_eligibility,Description,Language,Theory_hour,Practice_hour,ECTS,Books,Sem_id,Dept_code)
    VALUES('CE 326','Computer Networks',TRUE,'Alongside each layer and protocols of computer networks, the following topics will also be discussed: OSI model of network; MAC protocol; TCP and UDP protocols; error control, detection and correction; IPv4; routing; socket programming; network security.','English',2,2,6,'Computer Networking: A Top Down Approach. 8th Edition. 2020. James Kurose. Keith Ross ©️ | Pearson ','E','CE');

    INSERT INTO COURSE(Course_code,Course_name,Erasmus_eligibility,Description,Language,Theory_hour,Practice_hour,ECTS,Books,Sem_id,Dept_code)
    VALUES('CE 304','Operating Systems Security',TRUE,'A study of technical security policies, models, and mechanisms for confidentiality, integrity, and availability with respect to operating systems from an engineering point of view.','English',2,2,5,'Guide to Operating Systems Security Michael Palmer Publisher: Thomson 2003(2004 2nd ed)','E','CE');

    INSERT INTO COURSE(Course_code,Course_name,Erasmus_eligibility,Description,Language,Theory_hour,Practice_hour,ECTS,Sem_id,Dept_code)
    VALUES('CE 340','Cryptography and Network Security',TRUE,'Introducing literature and terminology related to cryptography and network security; providing students with information about basic encryption algorithms, systems, working principles and network security techniques.','English',3,0,5,'E','CE');

    INSERT INTO PREREQUISITE(Course_code,Prereq_code)
    VALUES('FENG 498','FENG 497');

    INSERT INTO PREREQUISITE(Course_code,Prereq_code)
    VALUES('MATH 236','MATH 154');

    INSERT INTO PREREQUISITE(Course_code,Prereq_code)
    VALUES('CE 326','SE 115');

    INSERT INTO COMPULSORY_COURSE(Course_code,Is_department_core)
    VALUES('CE 223',TRUE);

    INSERT INTO COMPULSORY_COURSE(Course_code,Is_department_core)
    VALUES('MATH 154',TRUE);

    INSERT INTO COMPULSORY_COURSE(Course_code,Is_department_core)
    VALUES('HIST 100',FALSE);

    INSERT INTO ELECTIVE_COURSE(Course_code)
    VALUES('CE 326');

    INSERT INTO ELECTIVE_COURSE(Course_code)
    VALUES('CE 340');

    INSERT INTO ELECTIVE_COURSE(Course_code)
    VALUES('CE 304');

    INSERT INTO LEARNING_OUTCOME(Course_code,Lo_count,Learning_outcome)
    VALUES('FENG 101',3,'Explain the legal implications of engineering solutions.Evaluate engineering activities in terms of adherence to professional principles and ethical responsibilities.');

    INSERT INTO LEARNING_OUTCOME(Course_code,Lo_count,Learning_outcome)
    VALUES('SE 115',6,'The students who succeeded in this course;will be able to define the fundamental concepts in programming,will be able to write, compile and debug programs in Java language,will be able to use control structures (decision and loop statements) in Java codes,will be able to design functions in Java codes,will be able to use arrays in Java codes,will be able to define classes in Java codes.');

    INSERT INTO LEARNING_OUTCOME(Course_code,Lo_count,Learning_outcome)
    VALUES('MATH 154',7,'The students who succeeded in this course;evaluate definite and indefinite integrals of functions using integration techniques
    calculate improper integrals and volumes of solids.
    use the applications of Taylor and Maclaurin series effectively.
    define the concepts of limits and continuity for the functions of several variables.
    calculate partial and directional derivatives.
    solve extreme value problems.
    compute double and triple integrals');

    INSERT INTO LEARNING_OUTCOME(Course_code,Lo_count,Learning_outcome)
    VALUES('PHYS 102',7,'The students who succeeded in this course;
    calculate the electric field, emerging due to the existence of electric charge, using the relationship between the charge and flux.
    define the electric potential and the electric potential energy.
    explain how the capacitors store energy in electric fields.
    analyze current and resistance in electric circuits.
    determine the relation between the magnetic field and the magnetic force.
    utilize Faraday&#39;s law to calculate induction voltages and currents.
    use experimental setups to collect and analyze data.');

    INSERT INTO LEARNING_OUTCOME(Course_code,Lo_count,Learning_outcome)
    VALUES('CE 221',8,'The students who succeeded in this course;will be able to analyze the loop structures of either recursive or non-recursive algorithms to express their asymptotic running times using big-Oh notation.will be able to assess the relative advantages of using array or linked list implementations versus hashing in efficiently solving search problems with concurrent insertion, and/or deletions on collections of data.will be able to describe the usage of various data structures.');

    INSERT INTO LEARNING_OUTCOME(Course_code,Lo_count,Learning_outcome)
    VALUES('CE 326',5,'The students who succeeded in this course;discuss the concept of network layer and the design of local area networks (LAN),express the working principles of the transport layer protocols (TCP and UDP),monitor the network traffic using packet analysis tools such as Wireshark and TCPDUMP,describe the structures and functionalities of the data link and MAC layers,	implement client-server applications using Java socket programming library.');

    INSERT INTO LEARNING_OUTCOME(Course_code,Lo_count,Learning_outcome)
    VALUES('CE 223',6,'The students who succeeded in this course;Identify and define all the information needed in the design of a database schema specific to a database application,create conceptual and physical database designs for a management information system by drawing the E/R diagram and performing the normalization of relations,understand the core terms, concepts, and tools of relational database management systems,query a database using SQL,implement database applications by properly managing concurrent transactions,finetune a database design to improve the performance of applications by the use of beneficial indexes and additional data structures conforming to the characteristics of applications running on them.');

    INSERT INTO LEARNING_OUTCOME(Course_code,Lo_count,Learning_outcome)
    VALUES('FENG 345',4,'The students who succeeded in this course;Discuss the applications of numerical analysis techniques in Engineering,Create solutions for both linear and non-linear problems,Define the process of fitting curves to the data sets,Explain numerical differentials and integrals.');

    --ITU

    INSERT INTO UNIVERSITY (uni_id, uni_name, country)
    VALUES (2, 'Istanbul Technical University', 'Turkey');

    INSERT INTO DEPARTMENT(Dept_code, Dept_name, Web_site, Uni_id)
    VALUES('BLG', 'Computer Science Engineering', 'https://bm.itu.edu.tr', 2);

    INSERT INTO DEPARTMENT(Dept_code, Dept_name, Web_site, Uni_id)
    VALUES('KIM', 'Department of Chemistry', 'https://kimya.itu.edu.tr',   2);

    INSERT INTO DEPARTMENT(Dept_code, Dept_name, Web_site, Uni_id)
    VALUES('EHB','Electronics and Communication Engineering', 'https://ee.itu.edu.tr', 2);

    INSERT INTO DEPARTMENT(Dept_code, Dept_name, Web_site, Uni_id)
    VALUES('TUR', 'Department of Turkish Language', 'http://www.turkdili.itu.edu.tr', 2);

    INSERT INTO COURSE (COURSE_CODE, COURSE_NAME, DESCRIPTION, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE)
    VALUES ('BLG 4901E', 'Computer Engineering Design I', 'Design, analysis studies.', 'English', 1, 4, 7, TRUE, 'Pressman – Software Engineering: A Practitioner’s Approach', '7', 'BLG');

    INSERT INTO COURSE (COURSE_CODE, COURSE_NAME, DESCRIPTION, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE)
    VALUES ('BLG 492E', 'Computer Engineering Design II', 'Implementation, tests, reporting, presentation.', 'English', 1, 8, 10, TRUE, 'Pressman – Software Engineering: A Practitioner’s Approach', '8', 'BLG');

    INSERT INTO COURSE (COURSE_CODE, COURSE_NAME, DESCRIPTION, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE)
    VALUES ('BLG 478E', 'Network Security', 'Introduction to network security. Security requirements and threats. Cryptography techniques. Authentication and access control. Network security protocols. Security management and applications.', 'English', 2, 0, 4, TRUE, 'Kurose & Ross – Computer Networking: A Top-Down Approach', '8', 'BLG');

    INSERT INTO COURSE (COURSE_CODE, COURSE_NAME, DESCRIPTION, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE)
    VALUES ('TUR 101', 'Turkish I', 'Definition of Language, Language and Thought, Language and Society, Meaning Types, Idioms and Proverbs, Narrative Techniques.', 'Turkish', 2, 0, 2, TRUE, 'IEEE/ACM Recommended Textbook', '1', 'TUR');

    INSERT INTO COURSE (COURSE_CODE, COURSE_NAME, DESCRIPTION, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE)
    VALUES ('TUR 102', 'Turkish II', 'Written Expression, Method and Planning of Writing, Composition Types, Scientific Writing, Paragraph, Sentence, Spelling and Punctuation.', 'Turkish', 2, 0, 2, TRUE, 'IEEE/ACM Recommended Textbook', '2', 'TUR');

    INSERT INTO COURSE (COURSE_CODE, COURSE_NAME, DESCRIPTION, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE)
    VALUES ('KIM 101E', 'General Chemistry I', 'The scope of chemistry and stoichiometry, atomic structure, periodic table, chemical bonding, molecular structure, gases, thermochemistry, chemical equilibrium, acids and bases, electrochemistry.', 'English', 3, 0, 4, TRUE, 'General Chemistry : Principles and Modern Applications', '1', 'KIM');

    INSERT INTO COURSE (COURSE_CODE, COURSE_NAME, DESCRIPTION, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE)
    VALUES ('EHB 322', 'Digital Electronic Circuits', 'NMOS and CMOS inverters and their static and dynamic properties, CMOS logic gates, logic families, and introduction to sequential circuits.', 'Turkish', 3, 0, 3, FALSE, 'IEEE/ACM Recommended Textbook', '4', 'EHB');


    -- Compulsory (Excel Type = Compulsory)
    INSERT INTO COMPULSORY_COURSE (COURSE_CODE) VALUES ('BLG 4901E');
    INSERT INTO COMPULSORY_COURSE (COURSE_CODE) VALUES ('BLG 492E');
    INSERT INTO COMPULSORY_COURSE (COURSE_CODE) VALUES ('TUR 101');
    INSERT INTO COMPULSORY_COURSE (COURSE_CODE) VALUES ('TUR 102');
    INSERT INTO COMPULSORY_COURSE (COURSE_CODE) VALUES ('KIM 101E');
    INSERT INTO COMPULSORY_COURSE (COURSE_CODE) VALUES ('EHB 322');

    -- Elective (Excel Type = Elective)
    INSERT INTO ELECTIVE_COURSE (COURSE_CODE, POOL_NAME) VALUES ('BLG 478E', 'Engineering Design');

    INSERT INTO PREREQUISITE (Course_code, Prereq_code, Prereq_type)
    VALUES ('BLG 492E', 'BLG 4901E', 'Mandatory');

    INSERT INTO PREREQUISITE (Course_code, Prereq_code, Prereq_type)
    VALUES ('TUR 101', 'TUR 102', 'Mandatory');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('BLG 4901E', 1, 'An ability to analyse a system, component, or process to meet desired needs. 22');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('BLG 4901E', 2, 'An ability to identify engineering problems. 23');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('BLG 4901E', 3, 'An ability to learn about the techniques, skills, and modern engineering tools necessary for engineering practice. 24');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('BLG 4901E', 4, 'An ability to communicate effectively. 25');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('BLG 4901E', 5, 'An ability to produce a detailed project analysis report 26');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('BLG 492E', 1, 'An ability to design and implement a system, component, or process to meet desired needs. 3');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('BLG 492E', 2, 'An ability to formulate, and solve engineering problems. 4');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('BLG 492E', 3, 'An ability to use the techniques, skills, and modern engineering tools necessary for engineering practice. 5');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('BLG 492E', 4, 'An ability to communicate effectively. 6');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('BLG 492E', 5, 'An ability to produce a detailed project report. 7');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('BLG 478E', 1, 'Be able to compose and decompose components of security architectures 6');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('BLG 478E', 2, 'Be able to analyze and design security protocols 7');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('BLG 478E', 3, 'Be able to perform secure programming tasks 8');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('BLG 478E', 4, 'Be familiar with the related social and legal issues 9');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('TUR 101', 1, 'Understand the definition of language with respect to intellectual, cultural and social aspects 15151515');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('TUR 101', 2, 'Understand the situation of Turkish Language among the world languages 16161616');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('TUR 101', 3, 'Have knowledge about the structure, characteristics and history of Turkish Language 17171717');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('TUR 101', 4, 'Make effective use of both the spoken and written languages 18181818');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('TUR 101', 5, 'Have knowledge about poetry language and Turkish Poetry 19191919');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('TUR 102', 1, 'Express his/her thoughts and ideas both in verbal and written way 6');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('TUR 102', 2, 'Write scientific and official texts 7');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('TUR 102', 3, 'Evaluate various genres of literature 8');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('TUR 102', 4, 'Perform planned/unplanned speeches 9');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('KIM 101E', 1, 'Be able to identify and apply atomic theories and useful relationships from the periodic table');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('KIM 101E', 2, 'Make calculations with using stochiometry in chemical reactions');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('KIM 101E', 3, 'Solve different problems about liquid solutions and gases');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('KIM 101E', 4, 'Make applications about heat, work, enthalpy and internal energy');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('KIM 101E', 5, 'Set up the three dimensional shape of molecular compounds with using their chemical bonding knowledge');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('KIM 101E', 6, 'Show the crystal structures of solids and skills kills to solve related problems');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('KIM 101E', 7, 'Solve problems about thermodynamic, chemical equilibrium, acid and base concepts and concentration');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('KIM 101E', 8, 'Integrate their chemistry knowledge to their daily life with the real-world examples');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('EHB 322', 1, 'Analyze the static and dynamic responses of NMOS and CMOS inverters 26');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('EHB 322', 2, 'Design of NMOS and CMOS inverters 27');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('EHB 322', 3, 'Analyze and design of basic and complex static gate circuits 28');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('EHB 322', 4, 'Analyze and design of NMOS and CMOS pass logic 29');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('EHB 322', 5, 'Analyze the flip-flop circuits 30');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('EHB 322', 6, 'Apply synchronization on digital circuits and analyze and design dynamic digital circuits 31');

    INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Learning_outcome)
    VALUES ('EHB 322', 7, 'Design of gate arrays and memories 32');

    INSERT INTO WORKLOAD_ACTIVITY (Course_code, Activity_name, Quantity, Duration_hour, Percentage_contribution)
    VALUES
    ('BLG 492E', 'Projects', 1, 250, 100);

    INSERT INTO WORKLOAD_ACTIVITY (Course_code, Activity_name, Quantity, Duration_hour, Percentage_contribution)
    VALUES
    ('BLG 4901E', 'Projects', 1, 175, 100);

    INSERT INTO WORKLOAD_ACTIVITY (Course_code, Activity_name, Quantity, Duration_hour, Percentage_contribution)
    VALUES
    ('BLG 478E', 'Midterm Exams', 2, 20, 40),
    ('BLG 478E', 'Homework',      4, 10, 20),
    ('BLG 478E', 'Final Exam',    1, 20, 40);

    INSERT INTO WORKLOAD_ACTIVITY (Course_code, Activity_name, Quantity, Duration_hour, Percentage_contribution)
    VALUES
    ('TUR 101', 'Midterm Exams', 1, 20, 40),
    ('TUR 101', 'Final Exam',    1, 30, 60);

    INSERT INTO WORKLOAD_ACTIVITY (Course_code, Activity_name, Quantity, Duration_hour, Percentage_contribution)
    VALUES
    ('TUR 102', 'Midterm Exams', 1, 20, 40),
    ('TUR 102', 'Final Exam',    1, 30, 60);

    INSERT INTO WORKLOAD_ACTIVITY (Course_code, Activity_name, Quantity, Duration_hour, Percentage_contribution)
    VALUES
    ('KIM 101E', 'Midterm Exams', 1, 30, 40),
    ('KIM 101E', 'Final Exam',    1, 40, 60);

    INSERT INTO WORKLOAD_ACTIVITY (Course_code, Activity_name, Quantity, Duration_hour, Percentage_contribution)
    VALUES
    ('EHB 322', 'Midterm Exams', 2, 30, 40),
    ('EHB 322', 'Quizzes',       3,  5, 15),
    ('EHB 322', 'Homework',      5, 10,  5),
    ('EHB 322', 'Final Exam',    1, 40, 40);

  --DEU
  INSERT INTO UNIVERSITY (uni_id, uni_name, country)
  VALUES 
  (3, 'Dokuz Eylul University', 'Turkey');

  INSERT INTO DEPARTMENT(Dept_code, Dept_name, Web_site, Uni_id)
  VALUES
  ('CME', 'Computer  Engineering', NULL , 3);

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, MODE_OF_DEL, Lvl_unit, Content)
  VALUES
  (
    'CME 1001',
    'ALGORITHMS AND PROGRAMMING I',
    'The main objectives of this course are to teach the main concepts and components of algorithms using an example programming language.',
    'English',
    2,
    2,
    6,
    NULL,
    'Textbook: Herbert Schildt, C# 4.0: The Complete Reference, McGraw-Hill, 2010.',
    '1',
    'CME',
    'Face to Face',
    'Bachelor''s Degree',
    '1 Introduction to Algorithms and Programming, Flowcharts
  2 Data Types and Basic Operations
  3 Conditional Statements
  4 Loop Statements - I
  5 Loop Statements - II
  6 File Operations
  7 One Dimensional Arrays
  8 Two and Multi-Dimensional Arrays
  9 Solving Example Questions, Midterm Exam
  10 Sparse Matrices
  11 Strings
  12 Procedures and Functions
  13 Structs
  14 Recursive Programming'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, MODE_OF_DEL, Lvl_unit, Content)
  VALUES
  (
    'CME 1005',
    'DISCRETE AND COMBINATORIAL MATHEMATICS',
    'The aim of this course is to introduce discrete data structures and to reach a solution by using these structures within a mathematical perspective for the encountered problems.',
    'English',
    3,
    0,
    3,
    NULL,
    'Kenneth Rosen, Discrete Mathematics and Its Applications. Sixth Ed. McGraw-Hill, 2007.',
    '1',
    'CME',
    'Face to Face',
    'Bachelor''s Degree',
    '1 Introduction, Sets
  2 Functions
  3 Relations
  4 Relations
  5 Counting
  6 Graphs
  7 Graphs
  8 Graphs
  9 Trees
  10 Trees
  11 Midterm exam.
  12 Trees
  13 Logic
  14 Proofs'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'MAT 1002',
    'CALCULUS II',
    'The sequence Math 1001-1002 is the standard complete introduction to the concepts and methods of calculus. It is taken by all engineering students. The emphasis is on concepts, solving problems, theory and proofs. Students will develop their reading, writing and questioning skills in Mathematics.',
    'Face to face',
    'English',
    4,
    0,
    5,
    NULL,
    'Thomas Calculus (12th Edition), George B. Thomas, Maurice D. Weir, Joel Hass, 2010. Supplementary Book(s): Calculus, Robert A. Adams & Christopher Essex, 2008',
    '2',
    'CME',
    'Bachelor''s Degree',
    '1 Infinite series; Convergence tests for positive series; Power series, Taylor and Maclaurin series
  2 Quadratic forms(Conic Sections)
  3 Vectors and coordinate geometry in three dimensional space Analytic geometry in three dimensions, Plane, lines, and quadratic surfaces
  4 Functions of several variables; Limits and continuity
  5 Partial derivatives; Higher-order derivatives, The chain rule
  6 1. Midterm
  7 Linear approximation; Gradients and directional derivatives, Implicit functions
  8 Applications of partial derivatives; Extreme values; Extreme values of functions defined on restricted domains
  9 Lagrange multipliers; Multiple integration; Double integrals, iteration of double integrals in Cartesian- Coordinates
  10 Surface area using by double integrals; Double integrals in Polar Coordinates
  11 Vector and scalar fields; Line integrals
  12 Conservative fields
  13 Surface integrals; Green s theorem, divergence theorem, and Stokes s theorem.
  14 Midterm Exam 2'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'CME 1004',
    'LINEAR ALGEBRA',
    'Teach the basics of linear algebra, develop ability of student in analytical thinking and problem analyzing.',
    'Face to face',
    'English',
    2,
    0,
    3,
    NULL,
    'Elementary Linear Algebra with Applications, Bernard Kolman and David R. Hill, Pearson Education Inc., 2008.',
    '2',
    'CME',
    'Bachelor''s Degree',
    '1 Linear equations and matrices-I
  2 Linear equations and matrices-II
  3 Solving linear systems I, Matlab Application
  4 Solving linear systems II
  5 Determinants-I
  6 Determinants-II
  7 Midterm Exam
  8 Real vector spaces
  9 Matlab Application
  10 Inner product spaces
  11 Linear trasformations and matrices
  12 Midterm Exam
  13 Eigenvalues and eigenvectors - I
  14 Eigenvalues and eigenvectors - II'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'CME 2001',
    'DATA STRUCTURES AND ALGORITHMS',
    'This course intends to equip students with basic knowledge and skills in the areas of data structure and algorithm design.',
    'Face to face',
    'English',
    2,
    2,
    6,
    NULL,
    'Introduction To Algorithms, Third Edition, Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, Clifford Stein, The MIT Press, 2001.',
    '3',
    'CME',
    'Bachelor''s Degree',
    '1 Introduction, Data Encapsulation, Data Structures, Algorithms, Review of Sets, Mathematical Induction, Recursion, Performance Issues
  2 Insertion sort, Merge sort, Asymptotic Notation
  3 Recurrences, Substitution, Recursion Tree Master Method
  4 Hashing, Hash Functions
  5 Open addressing Hashing, Heapsort
  6 Quicksort, Linear Time Sorting
  7 Midterm 1
  8 Binary Search Trees
  9 AVL Trees
  10 B-Trees
  11 Graph Search Algorithms
  12 Minimum Spanning Tree
  13 Shortest Path Algorithms
  14 Dynamic programming'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'CME 2007',
    'DIFFERENTIAL EQUATIONS',
    'Scope of the lecture is to learn how to use differential equations in solving engineering problems.',
    'Face to face',
    'English',
    3,
    0,
    4,
    NULL,
    'Differential Equations and Linear Algebra, S.W. Goode, Prentice Hall Inc., New Jersey, 2000.',
    '3',
    'CME',
    'Bachelor''s Degree',
    '1 How differential equation arise, basic ideas and terminology
  2 First order Differential equation-I
  3 First order Differential equation-II
  4 Implementation of orthogonal trajectories problem. Solving ordinary differential equation
  5 Change of variable DE, First order Homogenous DE, Bernoulli equation, exact DE
  6 Second order Differential equations-I
  7 Midterm Exam
  8 Second order Differential equations-II
  9 Lablace transformation-I
  10 Lablace transformation-II
  11 Eigenvalue and Eigenvector
  12 Midterm Exam
  13 Applications of Eigenvalue and Eigenvector
  14 General applications'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'CME 2004',
    'CONCEPTS OF PROGRAMMING LANGUAGES',
    'The objective of the course is providing the students to learn the concepts of programming languages by giving examples from different programming languages.',
    'Face to face',
    'English',
    2,
    2,
    7,
    NULL,
    'Robert W. Sebesta, Concepts of Programming Languages, 9th Edition, Pearson Education, 2010.',
    '4',
    'CME',
    'Bachelor''s Degree',
    '1 Preliminaries
  2 Describing Syntax
  3 Lexical and Syntax Analysis
  4 Evolution of Major Programming Languages
  5 Names, Bindings, Scopes
  6 Data Types - 1
  7 Data Types - 2
  8 Midterm
  9 Expression and Assignment Statements
  10 Statement-Level Control Structures
  11 Subprograms
  12 Abstract Data Types
  13 Support for Object Oriented Programming
  14 General Review'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'CME 2008',
    'NUMERICAL ANALYSIS',
    'This course is concerned with the mathematical derivation, description and analysis of obtaining numerical solutions of mathematical problems.',
    'Face to face',
    'English',
    3,
    0,
    3,
    NULL,
    'Elementary Numerical Analysis, Kendall Atkinson, Weimin Han, John Wiley & Sons Inc., Third Edition.',
    '4',
    'CME',
    'Bachelor''s Degree',
    '1 Taylor Polynomilas
  2 Error
  3 Root Finding
  4 Fixed Point Iteration
  5 Solution of System
  6 LU-Factorization
  7 Gauss Seidel and Jacobi Method
  8 The Eigenvalue Problem
  9 Interpolation and Approximation, Polynomial Interpolation
  10 Least Square Approximation
  11 Numerical Differentiation, Errors in Numerical Differentiation
  12 Numerical Integration, Applications'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'CME 3005',
    'OPERATING SYSTEMS',
    'This course introduces the basic operating system concepts such as processes and process synchronization, mutual exclusion, semaphores, process management and process scheduling, memory management, virtual memory and paging, interrupt structures and interrupt processing, device management, I/O systems and I/O processing.',
    'Face to face',
    'English',
    2,
    2,
    7,
    NULL,
    'Andrew S. Tanenbaum, Modern Operating Systems: Design & Implementation, Second Edition, Prentice Hall.',
    '5',
    'CME',
    'Bachelor''s Degree',
    '1 Introduction to Operating Systems
  2 Process and Threads
  3 Process and Threads
  4 IPC and Deadlock
  5 Midterm Exam - I
  6 Memory management
  7 Memory management
  8 Input/Output systems
  9 Input/Output Systems
  10 Midterm Exam - II
  11 File Systems
  12 File Systems
  13 Nework Operating Systems
  14 Multicore Operating system'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'CME 3009',
    'DATA COMMUNICATIONS APPLICATIONS',
    'It mainly makes the students conversant with the most popular telecommunications techniques and architectures used today as infrastructure for physical and link layer data communications.',
    'Face to face',
    'English',
    2,
    2,
    5,
    NULL,
    'Data Communications and Interoperability, Richard W. Markley, Prentice Hall, 1993.',
    '5',
    'CME',
    'Bachelor''s Degree',
    '1 Introduction. Concepts. Main Objective of the course.
  2 Computer network topologies. Classifying concepts.
  3 Transmission media: Examples, calculating capacities.
  4 Transmission media: Examples, calculating capacities.
  5 Signal and Charecter encoding. Digital signals. Asynchronous transmission.
  6 Signal encoding: Analog signals case: Modulation.
  7 Error Checking and CRC calculation.
  8 Error Checking and CRC calculation.
  9 Midterm Exam.
  10 Error correcting codes.
  11 Physical layer tasks. Serial interface standarts examples.
  12 Data link layer tasks.
  13 HDLC framing format. X.25 and Frame Relay.
  14 Working with LAP-B as a subset of HDLC: Sender Receiver interactions./ Example Problem solving.'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'CME 3004',
    'COMPUTER NETWORKS',
    'In this course, it is expected from students to have knowledge on basics of computer networking, including LAN and WAN technologies, digital communication techniques, IP principles, network architecture and protocols, basic network applications, basics of network planning, management and security.',
    'Face to face',
    'English',
    3,
    0,
    6,
    NULL,
    'Comer, D. E., Computer Networks and Internets, 4th Edition, Prentice Hall, New Jersey, 2004.',
    '6',
    'CME',
    'Bachelor''s Degree',
    '1 History and Development of Computer Networks
  2 LAN Technologies and Network Topology
  3 Network Interface Hardware
  4 LAN Active Devices
  5 Long-Distance and Local Loop Digital Technologies
  6 WAN Technologies and Routing
  7 Connection Oriented Networking and ATM; Network Characteristics
  8 Midterm Exam
  9 Protocols and Layering; Internetworking
  10 Internet Protocol Addresses; IP Subnetting; IPv6
  11 IP Datagrams and Datagram Forwarding
  12 Basic Internet Protocols: UDP, ICMP, TCP; ARP
  13 Network Address Translation and Domain Name System
  14 Network Security and Management'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'CME 3002',
    'AUTOMATA AND FORMAL LANGUAGES',
    'This course intends to equip students with knowledge and skills in computer languages, state machines, regular and context-free languages, Turing machines and computability.',
    'Face to face',
    'English',
    3,
    0,
    6,
    NULL,
    'Sipser, Michael. Introduction to the Theory of Computation, 2nd Edition, Thomson Course Technology, 2006.',
    '6',
    'CME',
    'Bachelor''s Degree',
    '1 Introduction to proving and proofs, sound proofs and thinking, proof by construction,contradiction, induction
  2 Recursive Definitions
  3 State Machines and Modelling Computation with State Machines
  4 Finite State Machines
  5 Regular Languages Regular Expressions
  6 Regular Languages - Nondeterminism
  7 Midterm 1
  8 Non-Regular Languages The Pumping Lemma
  9 Context-Free Languages Context-Free Grammars, Push-Down Automata
  10 Context-Free Languages Algorithms for membership
  11 Non-Context-Free Languages The Pumping Lemma
  12 Turing Machines
  13 Midterm 2
  14 The Definition Of An Algorithm - Decidability, The Halting Problem'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'İSG 4001',
    'OCCUPATIONAL HEALTH AND SAFETY I',
    'Teaching basic concepts in work health and safety (definition of work accidents and reasons). The purpose is teaching students the knowledge of preventing work accidents according to work safety regulations.',
    'Face to face',
    'English',
    2,
    0,
    2,
    NULL,
    'Özkılıç, Ö. (2005), İş Sağlığı ve Güvenliği Yönetim Sistemleri ve Risk Değerlendirme Metodolojileri, TISK Yayınları, Ankara. Bahr, N.J. (1997), System Safety Engineering and Risk Assessment: A Practical Approach, Taylor & Francis, New York. Hale, A. & Baram, M. (1998), Safety Management: The Challenge of Change, Pergamon, Netherlands. OHSAS 18001, TS18001 (2007). Bayır, M. & Ergül, M. (2006), İş Güvenliği, Alfa Aktüel Yayınları, Bursa. Regulations dealing with work safety.',
    '7',
    'CME',
    'Bachelor''s Degree',
    '1 Definitions dealing with work safety
  2 Work accidents and occupational disease
  3 Work accident analysis
  4 National institutions dealing with work safety
  5 National institutions dealing with work safety
  6 Occupational safety and health committee
  7 Workplace inspection
  8 Midterm 1
  9 Occupational disease
  10 Occupational disease
  11 Midterm 2
  12 Control and prevention of occupational disease
  13 Control and prevention of occupational disease
  14 International regulations dealing with work safety'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'CME 4701',
    'SENIOR PROJECT PROPOSAL',
    'Aim of this course is to allow students to select a topic for their senior projects and to prepare a proposal about project goals, schedules, resources and facilities. At the end of the semester, students will be able to formulate an original or creative project topic, to analyze and evaluate the information they have retrieved to support their senior projects.',
    'Face to face',
    'English',
    0,
    2,
    1,
    NULL,
    'Resources of the term courses.',
    '7',
    'CME',
    'Bachelor''s Degree',
    '1 Think of potential projects and communicate to advisor
  2 Make decision on project.
  3 Create Project Scope
  4 Present timelines
  5 Define design goals for project
  6 Identify User Needs
  7 Work on Project Implementation Plan
  8 Work on Project Implementation Plan
  9 Work on Project Implementation Plan
  10 Complete Project Implementation Plan
  11 Project Proposal Documentation
  12 Poster and Present Projects'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'CME 4802',
    'SENIOR PROJECT',
    'This course is designed to introduce students developing real-world projects. In this course, advisors guide students on the design, development, implementation and management of senior projects.',
    'Face to face',
    'English',
    0,
    6,
    10,
    NULL,
    'Resources of the term courses.',
    '8',
    'CME',
    'Bachelor''s Degree',
    '1 Work on Project
  2 Work on Project
  3 Work on Project
  4 Work on Project
  5 Work on Project
  6 Work on Project
  7 Work on Project
  8 Work on Project
  9 Work on Project
  10 Complete Project
  11 Final Report
  12 Poster and Project Presentation'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'İSG 4002',
    'OCCUPATIONAL HEALTH AND SAFETY',
    'The purpose is to make students use work safety and regulations in their own disciplines. Students should be able to take preventions with their work safety knowledge.',
    'Face to face',
    'English',
    2,
    0,
    2,
    NULL,
    'Bahr, N.J. (1997), System Safety Engineering and Risk Assessment: A Practical Approach, Taylor & Francis, New York. Hale, A. & Baram, M. (1998), Safety Management: The Challenge of Change, Pergamon, Netherlands. OHSAS 18001, TS18001 (2007). Bayır, M. & Ergül, M. (2006), İş Güvenliği, Alfa Aktüel Yayınları, Bursa. Regulations dealing with work safety.',
    '8',
    'CME',
    'Bachelor''s Degree',
    '1 Establishing workplace, regulations of workplace and its attachments
  2 Fire
  3 Electricity
  4 First aid and rescue
  5 Personal protective equipment
  6 Safety and health symbols
  7 Midterm 1
  8 Emenrgency plan
  9 Work safety and health at design, manufacturing and usage of working equipment
  10 Education work safety and health in workplace, standards and communication
  11 Midterm 2
  12 Heavy and high risk industries
  13 Regulations dealing with occupational work safety
  14 Regulations dealing with occupational work safety'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'CME 4457',
    'NETWORK SECURITY',
    'The aim of this course is to provide the students to learn a brief description of cryptography and practical applications that have been implemented to provide network security.',
    'Face to face',
    'English',
    2,
    2,
    6,
    NULL,
    'Stallings, W., Cryptography and Network Security, Fifth Edition, Prentice Hall, New Jersey, 2011, ISBN: 0136097049.',
    'E',
    'CME',
    'Bachelor''s Degree',
    '1 Cryptographic Terms
  2 Symmetric Encryption
  3 Asymmetric Encryption
  4 X.509 and PKI
  5 Kerberos
  6 Electronic Email Security
  7 IP Security
  8 Midterm
  9 Wireless Security
  10 SSL, TLS, SET
  11 Intruders
  12 Malicious Software
  13 Firewalls
  14 General Review'
  );

  INSERT INTO COURSE
  (COURSE_CODE, COURSE_NAME, DESCRIPTION, MODE_OF_DEL, LANGUAGE, THEORY_HOUR, PRACTICE_HOUR, ECTS, IS_ACTIVE, BOOKS, SEM_ID, DEPT_CODE, Lvl_unit, Content)
  VALUES
  (
    'CME 4417',
    'SIMULATION AND MODELING',
    'The aim of the course is to learn the basics of building a computer simulation model that "behaves like" or simulates the real system.',
    'Face to face',
    'English',
    2,
    2,
    6,
    NULL,
    'System Simulation, Geoffrey Gordon. Computer Simulation and Modelling, Francis Neelamkovil. Simulation using Promodel, C. Harrell, Biman K. Ghosh, Royce O. Bowden. Simulation with GPSS and GPSS V, P.A. Bobillier, B.C. Kahan, A.R. Probst.',
    'E',
    'CME',
    'Bachelor''s Degree',
    '1 Definition and overview
  2 Systems
  3 Models
  4 Introduction to GPSS and Comments
  5 GPSS Comments (cont.)
  6 Simple Queueing Models
  7 Solving Example Questions, Midterm
  8 Random Numbers
  9 Random Numbers (cont.)
  10 Statistical Inverstigation of program outputs
  11 Applications
  12 Solving Example Questions, Midterm
  13 Advance Commands in Gpss
  14 ProModels'
  );

  INSERT INTO COMPULSORY_COURSE (Course_code, Is_department_core) VALUES
  ('CME 1001', NULL),
  ('CME 1005', NULL),
  ('MAT 1002', NULL),
  ('CME 1004', NULL),
  ('CME 2001', NULL),
  ('CME 2007', NULL),
  ('CME 2004', NULL),
  ('CME 2008', NULL),
  ('CME 3005', NULL),
  ('CME 3009', NULL),
  ('CME 3004', NULL),
  ('CME 3002', NULL),
  ('İSG 4001', NULL),
  ('CME 4701', NULL),
  ('CME 4802', NULL),
  ('İSG 4002', NULL);
  INSERT INTO ELECTIVE_COURSE (Course_code, Pool_name) VALUES
  ('CME 4457', NULL),
  ('CME 4417', NULL);

  --CME 1001
  INSERT INTO LEARNING_OUTCOME (Course_code, Outcome_order, Lo_count, Learning_outcome) VALUES
  ('CME 1001', 1, 5, 'Describe the basic concepts of algorithms and programming'),
  ('CME 1001', 2, 5, 'Compose an algorithmic solution of a given problem'),
  ('CME 1001', 3, 5, 'Translate an algorithmic solution to a computer code (program)'),
  ('CME 1001', 4, 5, 'Apply structural and functional rules to programming process'),
  ('CME 1001', 5, 5, 'Use developed programs for solutions in mathematical and other fields');

  -- CME 1005
  INSERT INTO LEARNING_OUTCOME VALUES
  ('CME 1005', 1, 5, 'Apply discrete structures such as sets, relations, functions, graphs and trees in solving the encountered problems'),
  ('CME 1005', 2, 5, 'Apply the information about combinatorial mathematics, logic and proof in solving the encountered problems'),
  ('CME 1005', 3, 5, 'Analyze the problems within the course subjects from a mathematical perspective'),
  ('CME 1005', 4, 5, 'Formulize the problems within the course subjects from a mathematical perspective'),
  ('CME 1005', 5, 5, 'Evaluate the scope, boundaries and the nature of the encountered problems in an integral way');

  -- MAT 1002
  INSERT INTO LEARNING_OUTCOME VALUES
  ('MAT 1002', 1, 9, 'Define the sequence of partial sum for an infinite series and relate convergence to the series'),
  ('MAT 1002', 2, 9, 'Find the interval and radius of convergence for a given power series'),
  ('MAT 1002', 3, 9, 'Understand and identify vectors in the plane and three dimensional space'),
  ('MAT 1002', 4, 9, 'Find the total differential of a multivariable function'),
  ('MAT 1002', 5, 9, 'Manipulate gradient, divergence and curl and understand their meaning'),
  ('MAT 1002', 6, 9, 'Analyze and solve constrained and unconstrained optimization problems'),
  ('MAT 1002', 7, 9, 'Evaluate multiple integrals using iterated integrals'),
  ('MAT 1002', 8, 9, 'Understand vector fields, line integrals and Green theorem'),
  ('MAT 1002', 9, 9, 'Understand surface integrals, divergence theorem and Stokes theorem');

  -- CME 1004
  INSERT INTO LEARNING_OUTCOME VALUES
  ('CME 1004', 1, 6, 'Understand the basic principle and nomenclature of linear algebra'),
  ('CME 1004', 2, 6, 'Understand linear equations and arrays'),
  ('CME 1004', 3, 6, 'Solve linear equation systems'),
  ('CME 1004', 4, 6, 'Interpret the outcome of solutions'),
  ('CME 1004', 5, 6, 'Solve linear algebra problems analytically and numerically'),
  ('CME 1004', 6, 6, 'Apply theoretical knowledge using computer programs');

  -- CME 2001
  INSERT INTO LEARNING_OUTCOME VALUES
  ('CME 2001', 1, 6, 'Define standard data structures for dynamic sets'),
  ('CME 2001', 2, 6, 'Perform worst-case asymptotic analysis'),
  ('CME 2001', 3, 6, 'Analyze recursive algorithms asymptotically'),
  ('CME 2001', 4, 6, 'Define graph algorithms'),
  ('CME 2001', 5, 6, 'Apply divide and conquer technique'),
  ('CME 2001', 6, 6, 'Apply dynamic programming');

  -- CME 2007
  INSERT INTO LEARNING_OUTCOME VALUES
  ('CME 2007', 1, 6, 'Understand basic principles of differential equations'),
  ('CME 2007', 2, 6, 'Apply differential equations to engineering problems'),
  ('CME 2007', 3, 6, 'Solve differential equations analytically and numerically'),
  ('CME 2007', 4, 6, 'Solve real life problems using differential equations'),
  ('CME 2007', 5, 6, 'Evaluate obtained results'),
  ('CME 2007', 6, 6, 'Apply theoretical knowledge using computers');

  -- CME 2004
  INSERT INTO LEARNING_OUTCOME VALUES
  ('CME 2004', 1, 6, 'Recognize programming language concepts'),
  ('CME 2004', 2, 6, 'Compare programming paradigms'),
  ('CME 2004', 3, 6, 'Select appropriate programming languages'),
  ('CME 2004', 4, 6, 'Use new programming languages conceptually'),
  ('CME 2004', 5, 6, 'Evaluate roles in program life cycle'),
  ('CME 2004', 6, 6, 'Explain system programs and interactions');

  -- CME 2008
  INSERT INTO LEARNING_OUTCOME VALUES
  ('CME 2008', 1, 5, 'Describe basic concepts of numerical analysis'),
  ('CME 2008', 2, 5, 'Compose numerical solutions'),
  ('CME 2008', 3, 5, 'Improve reasoning and problem solving ability'),
  ('CME 2008', 4, 5, 'Advise numerical approaches'),
  ('CME 2008', 5, 5, 'Apply numerical methods to complex problems');

  -- CME 3005
  INSERT INTO LEARNING_OUTCOME VALUES
  ('CME 3005', 1, 6, 'Understand modern operating system concepts'),
  ('CME 3005', 2, 6, 'Select proper operating systems'),
  ('CME 3005', 3, 6, 'Design or modify OS components'),
  ('CME 3005', 4, 6, 'Use OS APIs'),
  ('CME 3005', 5, 6, 'Develop multithreaded applications'),
  ('CME 3005', 6, 6, 'Understand resource management techniques');

  -- CME 3009
  INSERT INTO LEARNING_OUTCOME VALUES
  ('CME 3009', 1, 5, 'Understand communication theory limits'),
  ('CME 3009', 2, 5, 'Understand physical layer limitations'),
  ('CME 3009', 3, 5, 'Relate network layers'),
  ('CME 3009', 4, 5, 'Solve modulation problems'),
  ('CME 3009', 5, 5, 'Evaluate communication technologies');

  -- CME 3004
  INSERT INTO LEARNING_OUTCOME VALUES
  ('CME 3004', 1, 5, 'Understand computer networking principles'),
  ('CME 3004', 2, 5, 'Understand LAN and WAN technologies'),
  ('CME 3004', 3, 5, 'Understand IP basics'),
  ('CME 3004', 4, 5, 'Understand network architectures and protocols'),
  ('CME 3004', 5, 5, 'Plan networks with security and management');

  -- CME 3002
  INSERT INTO LEARNING_OUTCOME VALUES
  ('CME 3002', 1, 8, 'Define proof techniques'),
  ('CME 3002', 2, 8, 'Define finite state machines'),
  ('CME 3002', 3, 8, 'Define regular languages'),
  ('CME 3002', 4, 8, 'Define context free languages'),
  ('CME 3002', 5, 8, 'Define pushdown automata'),
  ('CME 3002', 6, 8, 'Define Turing machines'),
  ('CME 3002', 7, 8, 'Apply reductions'),
  ('CME 3002', 8, 8, 'Define P and NP classes');

  -- İSG 4001
  INSERT INTO LEARNING_OUTCOME VALUES
  ('İSG 4001', 1, 5, 'Understand basic work safety concepts'),
  ('İSG 4001', 2, 5, 'Understand work accident definitions and methods'),
  ('İSG 4001', 3, 5, 'Understand national work safety institutions'),
  ('İSG 4001', 4, 5, 'Understand occupational diseases'),
  ('İSG 4001', 5, 5, 'Understand prevention and risk management');

  -- CME 4701
  INSERT INTO LEARNING_OUTCOME VALUES
  ('CME 4701', 1, 5, 'Build teamwork skills'),
  ('CME 4701', 2, 5, 'Demonstrate research skills'),
  ('CME 4701', 3, 5, 'Understand ethical responsibilities'),
  ('CME 4701', 4, 5, 'Apply creativity in projects'),
  ('CME 4701', 5, 5, 'Commit to quality and improvement');

  -- CME 4802
  INSERT INTO LEARNING_OUTCOME VALUES
  ('CME 4802', 1, 5, 'Build teamwork skills'),
  ('CME 4802', 2, 5, 'Demonstrate research skills'),
  ('CME 4802', 3, 5, 'Understand ethical responsibilities'),
  ('CME 4802', 4, 5, 'Apply creativity in real projects'),
  ('CME 4802', 5, 5, 'Commit to quality and improvement');

  -- İSG 4002
  INSERT INTO LEARNING_OUTCOME VALUES
  ('İSG 4002', 1, 5, 'Apply work safety regulations'),
  ('İSG 4002', 2, 5, 'Manage fire, electricity and first aid'),
  ('İSG 4002', 3, 5, 'Plan protective equipment and emergency'),
  ('İSG 4002', 4, 5, 'Understand OHS standards'),
  ('İSG 4002', 5, 5, 'Apply occupational safety regulations');

  -- CME 4457
  INSERT INTO LEARNING_OUTCOME VALUES
  ('CME 4457', 1, 5, 'Differentiate security protocols'),
  ('CME 4457', 2, 5, 'Explain network security technologies'),
  ('CME 4457', 3, 5, 'Create secure networks'),
  ('CME 4457', 4, 5, 'Explain firewall mechanisms'),
  ('CME 4457', 5, 5, 'Use web browsers securely');

  -- CME 4417
  INSERT INTO LEARNING_OUTCOME VALUES
  ('CME 4417', 1, 6, 'Understand simulation and modelling'),
  ('CME 4417', 2, 6, 'Solve simulation problems'),
  ('CME 4417', 3, 6, 'Work in interdisciplinary teams'),
  ('CME 4417', 4, 6, 'Solve engineering problems using simulation'),
  ('CME 4417', 5, 6, 'Analyze simulation results'),
  ('CME 4417', 6, 6, 'Use simulation software');
