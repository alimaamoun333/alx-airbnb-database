-- 1. Rename the old Booking table to preserve data
ALTER TABLE Booking RENAME TO Booking_old;

-- 2. Create a new partitioned Booking table
CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);

-- 3. Create partitions for example years
CREATE TABLE Booking_2022 PARTITION OF Booking
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- 4. Insert data from old table into new partitions
INSERT INTO Booking
SELECT *
FROM Booking_old;

-- 5. Drop the old table (optional)
-- DROP TABLE Booking_old;
