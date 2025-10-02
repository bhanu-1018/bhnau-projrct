-- 1. Filter tasks by status
SELECT * FROM tasks WHERE status = 'pending';

-- 2. Filter tasks by priority
SELECT * FROM tasks WHERE priority = 'high';

-- 3. Filter tasks by due date (next 7 days)
SELECT * FROM tasks
WHERE due_date BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '7 days';

-- 4. Leaderboard: top users by completed tasks
SELECT u.user_id, u.name, COUNT(t.task_id) AS completed_count
FROM users u
JOIN tasks t ON u.user_id = t.assigned_user_id
WHERE t.status = 'completed'
GROUP BY u.user_id, u.name
ORDER BY completed_count DESC;
