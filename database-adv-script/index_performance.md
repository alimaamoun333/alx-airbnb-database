# Index Performance Report

## Overview

This document describes the indexes created and their impact on query performance.

## Created Indexes

- `idx_user_email`: Index on User.email
- `idx_booking_user_id`: Index on Booking.user_id
- `idx_booking_property_id`: Index on Booking.property_id
- `idx_booking_start_date`: Index on Booking.start_date
- `idx_property_location`: Index on Property.location

## Performance Measurement

### Example Query (Before Index)

```sql
EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE user_id = 'some-uuid';
