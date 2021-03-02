-- Total number of assignmemnts and duration of assignments per day
SELECT day, count(*) as number_of_assignments, SUM(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;

