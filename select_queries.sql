SELECT profession FROM professions 
WHERE profession LIKE '%а' ORDER BY profession;

SELECT COUNT(name) FROM users 
WHERE name='Андрей' and age >= 45 and age <= 55;

SELECT COUNT(name) FROM users 
WHERE name IN ('Никита', 'Антон', 'Ольга', 'Елена') and age < 60;

SELECT AVG(age) FROM users WHERE name = 'Гертруда';

SELECT COUNT(*) FROM users
WHERE prof_id IN (SELECT id FROM professions 
             WHERE profession IN ('Биотехнолог', 'Кондитер'));

WITH avg_age_of_users_work_as_a_nefr_geodes AS
(SELECT AVG(age) FROM users
WHERE prof_id IN (SELECT id FROM professions
WHERE profession IN ('Нефролог', 'Геодезист')))
SELECT COUNT(*) FROM users
WHERE (name LIKE "%Э%" or name LIKE "%э%") and
age < (SELECT * FROM avg_age_of_users_work_as_a_nefr_geodes);

