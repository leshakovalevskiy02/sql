UPDATE users SET age = 30 WHERE age < 30;
SELECT AVG(age) FROM users WHERE name = 'Архип';

UPDATE users
SET prof_id = (SELECT id FROM professions
                 WHERE profession = 'Инженер-конструктор')
WHERE age < 45 and age > 25 and prof_id = (SELECT id FROM professions
                 WHERE profession = 'Инженер-технолог');
SELECT COUNT(*)
FROM users
WHERE name LIKE '%п%' and prof_id = (SELECT id FROM professions
                 WHERE profession = 'Инженер-конструктор');