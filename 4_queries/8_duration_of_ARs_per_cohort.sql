-- Total duration of ARs per cohort
SELECT cohorts.name as name, SUM(completed_at - started_at) as total_duration 
FROM students
JOIN cohorts ON cohort_id = cohorts.id 
JOIN assistance_requests ON student_id = students.id
GROUP BY cohorts.name
ORDER BY total_duration;