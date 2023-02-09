-- \i 1_queries/5_all_my_rservations.sql
SELECT
  reservations.id,
  properties.title,
  properties.cost_per_night,
  reservations.start_date,
  avg(rating) as average_rating
FROM
  reservations
  JOIN properties ON reservations.property_id = properties.id
  JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE
  reservations.guest_id = 1
GROUP BY
  properties.id,
  reservations.id
ORDER BY
  reservations.start_date
LIMIT
  10;

-- first att
-- SELECT
--   id,
--   title,
--   properties.cost_per_night as cost_per_night,
--   start_date,
--   avg(property_reviews.rating)
-- FROM
--   reservations
--   JOIN properties ON properties.id = property_id
--   JOIN property_reviews ON property_reviews.reservation_id = reservations.id
-- ORDER BY
--   start_date DESC
-- LIMIT
--   10;