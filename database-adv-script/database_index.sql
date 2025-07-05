-- Index on User email for faster lookup
CREATE INDEX idx_user_email
ON User (email);

-- Index on Booking user_id for faster joins/filtering
CREATE INDEX idx_booking_user_id
ON Booking (user_id);

-- Index on Booking property_id for faster joins
CREATE INDEX idx_booking_property_id
ON Booking (property_id);

-- Index on Booking start_date to optimize date range queries
CREATE INDEX idx_booking_start_date
ON Booking (start_date);

-- Index on Property location to speed up location searches
CREATE INDEX idx_property_location
ON Property (location);
