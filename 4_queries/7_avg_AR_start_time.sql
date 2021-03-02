-- Average time to start an AR
SELECT AVG(started_at - created_at) as average_wait_time
FROM assistance_requests;