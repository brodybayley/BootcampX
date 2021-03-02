SELECT teachers.name as name, COUNT(assistance_requests.completed_at) as total_assistances
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY name;