SELECT cohorts.name as cohort_name, count(students.*) as students_count
  FROM cohorts
  JOIN students ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
  HAVING count(students.*) >= 18
ORDER BY students_count asc;