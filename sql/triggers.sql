--TRIGGER 1 for WORKLOAD Total Calculation
CREATE OR REPLACE FUNCTION trg_workload_pct_not_over_100()
RETURNS TRIGGER AS $$
DECLARE
  v_course VARCHAR(20);
  total_pct INT;
BEGIN
  v_course := COALESCE(NEW.course_code, OLD.course_code);

  SELECT COALESCE(SUM(percentage_contribution), 0)
  INTO total_pct
  FROM workload_activity
  WHERE course_code = v_course;

  IF total_pct > 100 THEN
    RAISE EXCEPTION 'Total workload percentage exceeds 100 for course % (total=%)', v_course, total_pct;
  END IF;

  RETURN COALESCE(NEW, OLD);
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS workload_pct_check_insupd ON workload_activity;
DROP TRIGGER IF EXISTS workload_pct_check_del ON workload_activity;

CREATE TRIGGER workload_pct_check_insupd
AFTER INSERT OR UPDATE ON workload_activity
FOR EACH ROW
EXECUTE FUNCTION trg_workload_pct_not_over_100();

CREATE TRIGGER workload_pct_check_del
AFTER DELETE ON workload_activity
FOR EACH ROW
EXECUTE FUNCTION trg_workload_pct_not_over_100();

--TRIGGER 2 For PREREQUISITE
--Function:
CREATE OR REPLACE FUNCTION trg_prereq_no_self_or_2cycle()
RETURNS TRIGGER AS $$
BEGIN
  -- 1) Self prerequisite yasak
  IF NEW.course_code = NEW.prereq_code THEN
    RAISE EXCEPTION 'A course cannot be a prerequisite of itself: %', NEW.course_code;
  END IF;

  -- 2) 2'li cycle yasak: eğer B->A varsa A->B eklenemesin
  IF EXISTS (
    SELECT 1
    FROM prerequisite p
    WHERE p.course_code = NEW.prereq_code
      AND p.prereq_code = NEW.course_code
  ) THEN
    RAISE EXCEPTION 'Prerequisite 2-cycle detected: % <-> %', NEW.course_code, NEW.prereq_code;
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

--Trigger:
DROP TRIGGER IF EXISTS prereq_no_self_or_2cycle ON prerequisite;

CREATE TRIGGER prereq_no_self_or_2cycle
BEFORE INSERT OR UPDATE ON prerequisite
FOR EACH ROW
EXECUTE FUNCTION trg_prereq_no_self_or_2cycle();


--TRIGGER 3 Learning Outcome Integration:
--Function:
CREATE OR REPLACE FUNCTION trg_refresh_lo_count_from_details()
RETURNS TRIGGER AS $$
DECLARE
  v_course VARCHAR(20);
  v_cnt INT;
BEGIN
  v_course := COALESCE(NEW.course_code, OLD.course_code);

  -- Detay satırları say: outcome_order > 0
  SELECT COUNT(*)
    INTO v_cnt
  FROM learning_outcome
  WHERE course_code = v_course
    AND outcome_order > 0;

  -- Summary satırı varsa güncelle
  UPDATE learning_outcome
  SET lo_count = v_cnt
  WHERE course_code = v_course
    AND outcome_order = 0;

  -- Summary yoksa oluştur
  IF NOT FOUND THEN
    INSERT INTO learning_outcome (course_code, outcome_order, lo_count, learning_outcome)
    VALUES (v_course, 0, v_cnt, NULL);
  END IF;

  RETURN COALESCE(NEW, OLD);
END;
$$ LANGUAGE plpgsql;

--Trigger:
DROP TRIGGER IF EXISTS lo_count_after_detail_insupd ON learning_outcome;
DROP TRIGGER IF EXISTS lo_count_after_detail_del ON learning_outcome;

CREATE TRIGGER lo_count_after_detail_insupd
AFTER INSERT OR UPDATE ON learning_outcome
FOR EACH ROW
WHEN (NEW.outcome_order > 0)
EXECUTE FUNCTION trg_refresh_lo_count_from_details();

CREATE TRIGGER lo_count_after_detail_del
AFTER DELETE ON learning_outcome
FOR EACH ROW
WHEN (OLD.outcome_order > 0)
EXECUTE FUNCTION trg_refresh_lo_count_from_details();

