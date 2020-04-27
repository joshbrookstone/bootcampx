SELECT students.name as student, AVG(assignment_submissions.duration) as average_estimated_duration, AVG(assignments.duration) as average_assignment_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignments.duration) > AVG(assignment_submissions.duration)
ORDER BY average_estimated_duration ASC;