-- \i 1_queries/2_average_length_reservations.sql
SELECT
  avg(end_date - start_date) as average_duration
FROM
  reservations;