SELECT sum(assignment_submissions.duration) as total_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';



