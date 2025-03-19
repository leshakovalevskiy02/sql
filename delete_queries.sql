DELETE FROM users
WHERE name = "Христос" and age > 33;
SELECT MAX(id) FROM users
WHERE name = "Христос";

DELETE FROM users WHERE id % 2 == 0;
SELECT SUM(age) FROM users
WHERE name LIKE '%а' and name not LIKE 'Г%';