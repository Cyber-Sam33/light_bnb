-- \i 1_queries/4_most_visited_city.sql
SELECT
  properties.city,
  count(reservations) as total_reservations
FROM
  reservations
  JOIN properties ON property_id = properties.id
GROUP BY
  properties.city
ORDER BY
  total_reservations DESC;

-- first attempt
-- SELECT
--   city,
--   COUNT(reservations) as total_reservations
-- FROM
--   properties
--   JOIN reservations ON property_id = properties.id