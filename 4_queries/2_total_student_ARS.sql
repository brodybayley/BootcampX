-- Total number of AR's for a student
SELECT students.name as name, COUNT(assistance_requests.completed_at) as total_assistances
FROM students
JOIN assistance_requests ON student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY name;