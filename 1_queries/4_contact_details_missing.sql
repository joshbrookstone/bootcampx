SELECT name, id, cohort_id
FROM STUDENTS
WHERE email IS NULL 
OR phone IS NULL;