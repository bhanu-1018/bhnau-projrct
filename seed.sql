-- Insert sample users
INSERT INTO users (name, email) VALUES
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com'),
('Charlie Davis', 'charlie@example.com');

-- Insert sample tasks
INSERT INTO tasks (title, description, assigned_user_id, status, priority, due_date)
VALUES
('Design Database', 'Create schema and ER diagram', 1, 'in_progress', 'high', '2025-10-15'),
('Write API Docs', 'Document task APIs', 2, 'pending', 'medium', '2025-10-20'),
('Build UI', 'Frontend implementation', 3, 'pending', 'low', '2025-10-25'),
('Testing', 'Write unit tests', 1, 'completed', 'medium', '2025-09-30');
