-- Measure query performance BEFORE adding indexes
EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE user_id = 'some-uuid';

-- Measure query performance BEFORE adding indexes
EXPLAIN ANALYZE
SELECT *
FROM Property
WHERE location = 'New York';

-- Create indexes to optimize performance
CREATE INDEX idx_user_email
ON User (email);

CREATE INDEX idx_booking_user_id
ON Booking (user_id);

CREATE INDEX idx_booking_property_id
ON Booking (property_id);

CREATE INDEX idx_booking_start_date
ON Booking (start_date);

CREATE INDEX idx_property_location
ON Property (location);

-- Measure query performance AFTER adding indexes
EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE user_id = 'some-uuid';

-- Measure query performance AFTER adding indexes
EXPLAIN ANALYZE
SELECT *
FROM Property
WHERE location = 'New York';
