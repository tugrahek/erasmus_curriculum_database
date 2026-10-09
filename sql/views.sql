--Erasmus Uyumluluğu 




  CREATE OR REPLACE VIEW View_Erasmus_Scoring_Logic AS
  WITH CourseInfo AS (
      SELECT 
          c.*, 
          s.year_level, 
          u.uni_name,
          u.uni_id
      FROM COURSE c
      JOIN SEMESTER s ON c.sem_id = s.sem_id
      JOIN DEPARTMENT d ON c.dept_code = d.dept_code
      JOIN UNIVERSITY u ON d.uni_id = u.uni_id
  ),
  ScoredCourses AS (
      SELECT 
          c1.uni_name AS Home_University,
          c1.course_code AS Home_Code,
          c1.course_name AS Home_Name,
          c2.uni_name AS Target_University,
          c2.course_code AS Target_Code,
          c2.course_name AS Target_Name,

          -- 1. İsim Anahtar Kelime Benzerliği (Max 30 Puan)
          (CASE WHEN (
              (CASE WHEN c1.course_name ILIKE '%Data%' AND c2.course_name ILIKE '%Data%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.course_name ILIKE '%Algorithm%' AND c2.course_name ILIKE '%Algorithm%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.course_name ILIKE '%Program%' AND c2.course_name ILIKE '%Program%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.course_name ILIKE '%Software%' AND c2.course_name ILIKE '%Software%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.course_name ILIKE '%System%' AND c2.course_name ILIKE '%System%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.course_name ILIKE '%Network%' AND c2.course_name ILIKE '%Network%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.course_name ILIKE '%Security%' AND c2.course_name ILIKE '%Security%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.course_name ILIKE '%Analysis%' AND c2.course_name ILIKE '%Analysis%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.course_name ILIKE '%Project%' AND c2.course_name ILIKE '%Project%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.course_name ILIKE '%Mathematical%' AND c2.course_name ILIKE '%Mathematical%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.course_name ILIKE '%Calculus%' AND c2.course_name ILIKE '%Calculus%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.course_name ILIKE '%Physics%' AND c2.course_name ILIKE '%Physics%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.course_name ILIKE '%Design%' AND c2.course_name ILIKE '%Design%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.course_name ILIKE '%Engineering%' AND c2.course_name ILIKE '%Engineering%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.course_name ILIKE '%Networks%' AND c2.course_name ILIKE '%Networks%' THEN 1 ELSE 0 END)
          ) >= 1 THEN 30 ELSE 0 END) AS Name_Score,

          -- 2. ECTS Uyumu (Max 20 Puan)
          (CASE WHEN c2.ects >= c1.ects THEN 20 ELSE 0 END) AS ECTS_Score,

          -- 3. Dil Uyumu (Max 10 Puan)
          (CASE WHEN c1.language = c2.language THEN 10 ELSE 0 END) AS Language_Score,

          -- 4. Açıklama (Description) Anahtar Kelime Uyumu (Max 30 Puan)
          (CASE WHEN (
              (CASE WHEN c1.description ILIKE '%data%' AND c2.description ILIKE '%data%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%algorithm%' AND c2.description ILIKE '%algorithm%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%program%' AND c2.description ILIKE '%program%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%software%' AND c2.description ILIKE '%software%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%system%' AND c2.description ILIKE '%system%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%network%' AND c2.description ILIKE '%network%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%security%' AND c2.description ILIKE '%security%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%analysis%' AND c2.description ILIKE '%analysis%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%Project%' AND c2.description ILIKE '%Project%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%Mathematical%' AND c2.description ILIKE '%Mathematical%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%Algorithms%' AND c2.description ILIKE '%Algorithms%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%Programming%' AND c2.description ILIKE '%Programming%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%Analysis%' AND c2.description ILIKE '%Analysis%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%Design%' AND c2.description ILIKE '%Design%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%Security%' AND c2.description ILIKE '%Security%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%Data%' AND c2.description ILIKE '%Data%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%Network%' AND c2.description ILIKE '%Network%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.description ILIKE '%System%' AND c2.description ILIKE '%System%' THEN 1 ELSE 0 END) +
              (CASE WHEN c1.course_name ILIKE '%Networks%' AND c2.course_name ILIKE '%Networks%' THEN 1 ELSE 0 END)
          ) >= 3 THEN 30 ELSE 0 END) AS Keyword_Score,

          -- Yıl Seviyesi (Mantıksal Kontrol İçin)
          (CASE WHEN c1.year_level = c2.year_level THEN 10 ELSE 0 END) AS Year_Level_Score

      FROM CourseInfo c1
      CROSS JOIN CourseInfo c2
      WHERE c1.uni_id <> c2.uni_id AND c1.Erasmus_eligibility = TRUE AND c2.Erasmus_eligibility = TRUE
  )
  SELECT 
      *,
      (Name_Score + ECTS_Score + Language_Score + Keyword_Score + Year_Level_Score) AS Total_Score,
      -- Uyumluluk Kategorisi Ekleme
      CASE 
          WHEN (Name_Score + ECTS_Score + Language_Score + Keyword_Score + Year_Level_Score) >= 80 THEN 'Strong Match (Birebir Denk)'
          WHEN (Name_Score + ECTS_Score + Language_Score + Keyword_Score + Year_Level_Score) >= 50 THEN 'Average Match (İçerik Benzerliği Mevcut)'
          WHEN (Name_Score + ECTS_Score + Language_Score + Keyword_Score + Year_Level_Score) >= 20 THEN 'Weak Match (Kısmi Benzerlik)'
          ELSE 'Incompatible (Uyumsuz)'
      END AS Match_Category
  FROM ScoredCourses;









  CREATE OR REPLACE VIEW View_University_Erasmus_Compatibility AS
  SELECT 
      Home_University,
      Target_University,
      -- Sadece akademik olarak anlamlı (50 puan ve üzeri) eşleşen dersleri sayıyoruz
      COUNT(*) FILTER (WHERE Total_Score >= 50) AS Compatible_Course_Count,
      -- Bu üniversiteler arasında transfer edilebilecek toplam ECTS potansiyeli
      SUM(Home_ECTS) FILTER (WHERE Total_Score >= 50) AS Total_Transferable_ECTS,
      -- Genel uyum durumu
      CASE 
          WHEN COUNT(*) FILTER (WHERE Total_Score >= 50) >= 5 THEN 'Excellent Partnership (5+ Courses)'
          WHEN COUNT(*) FILTER (WHERE Total_Score >= 50) >= 3 THEN 'Good Partnership (3+ Courses)'
          ELSE 'Limited Partnership'
      END AS Partnership_Status
  FROM (
      -- Mevcut view'dan veri çekiyoruz, ECTS bilgisini ekliyoruz
      SELECT v.*, c.ECTS AS Home_ECTS
      FROM View_Erasmus_Scoring_Logic v
      JOIN COURSE c ON v.Home_Code = c.Course_code
  ) AS DetailedMatches
  GROUP BY Home_University, Target_University
  HAVING COUNT(*) FILTER (WHERE Total_Score >= 50) >= 3 -- 3'ten fazla uyumlu ders şartı
  ORDER BY Compatible_Course_Count DESC;
