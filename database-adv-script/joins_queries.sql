-- 1️⃣ INNER JOIN: Retrieve all bookings and their respective users
SELECT
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    b.status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM
    Booking b
INNER JOIN
    User u
ON
    b.user_id = u.user_id;

-- 2️⃣ LEFT JOIN: Retrieve all properties and their reviews, including properties with no reviews
SELECT
    p.property_id,
    p.name AS property_name,
    p.description,
    r.review_id,
    r.rating,
    r.comment
FROM
    Property p
LEFT JOIN
    Review r
ON
    p.property_id = r.property_id;


-- 3️⃣ FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
-- ⚠️ Note: FULL OUTER JOIN may not be supported in MySQL. If you are using MySQL, use UNION of LEFT and RIGHT JOINs.
-- Example for PostgreSQL:
SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM
    User u
FULL OUTER JOIN
    Booking b
ON
    u.user_id = b.user_id;

-- If using MySQL, use this alternative:
-- SELECT u.user_id, u.first_name, u.last_name, b.booking_id, b.property_id, b.start_date, b.end_date
-- FROM User u
-- LEFT JOIN Booking b ON u.user_id = b.user_id
-- UNION
-- SELECT u.user_id, u.first_name, u.last_name, b.booking_id, b.property_id, b.start_date, b.end_date
-- FROM User u
-- RIGHT JOIN Booking b ON u.user_id = b.user_id;
