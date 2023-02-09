-- \i 1_queries/3_property_by_city.sql
SELECT
  properties.id,
  title,
  cost_per_night,
  avg(property_reviews.rating) as average_rating
FROM
  properties
  LEFT JOIN property_reviews ON properties.id = property_id
WHERE
  city LIKE '%ancouv%'
GROUP BY
  properties.id
HAVING
  avg(property_reviews.rating) >= 4
ORDER BY
  cost_per_night
LIMIT
  10;

-- SELECT
--   id,
--   title,
--   cost_per_night avg(property_reviews.rating) as average_rating
-- FROM
--   properties
--   JOIN ON properties.id = property_id
-- ORDER BY
--   cost_per_night
-- LIMIT
--   10;