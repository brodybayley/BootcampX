SELECT name, email, id, cohort_id
FROM STUDENTS
WHERE email NOT LIKE ('%@gmail.com')
AND phone IS NULL