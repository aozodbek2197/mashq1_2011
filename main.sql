-- 1.
SELECT first_name, last_name, email 
FROM users 
WHERE city = 'Toshkent' OR region = 'Toshkent shahri';

-- 2.
SELECT * 
FROM users 
WHERE created_at > '2024-03-31' 
  AND last_login >= '2024-11-01' 
  AND last_login < '2024-12-01';

-- 3.
SELECT region, COUNT(*) AS user_count
FROM users 
WHERE region IS NOT NULL
GROUP BY region
ORDER BY user_count DESC;

-- 4.
SELECT COUNT(*) AS gmail_active_users
FROM users 
WHERE email ILIKE '%@gmail.com' 
  AND status = 'active';

-- 5.
SELECT * 
FROM users 
ORDER BY created_at DESC 
LIMIT 5;

-- 6.
SELECT * 
FROM users 
WHERE created_at < '2024-07-01';
