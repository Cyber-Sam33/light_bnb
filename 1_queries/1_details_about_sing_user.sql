-- \i 1_queries/1_details_about_sing_user.sql
SELECT
  id,
  name,
  email,
  password
FROM
  users
WHERE
  email = 'tristanjacobs@gmail.com';

-- SELECT
--   id,
--   name,
--   email,
--   password
-- FROM
--   users
-- WHERE
--   email = 'tristanjacobs@gmail.com';