const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortMonth = process.argv[2];

pool.query(`
SELECT DISTINCT(teachers.name) as name, cohorts.name as cohort
FROM teachers
JOIN assistance_requests on teacher_id = teachers.id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = '${cohortMonth}'
ORDER BY teacher;
`)

  .then(res => {
    res.rows.forEach(user => {
      console.log(`${cohortMonth}: ${user.name}`);
    });
  }).catch(err => console.error('query error', err.stack));