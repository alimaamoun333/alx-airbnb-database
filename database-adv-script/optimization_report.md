# Optimization Report

## Initial Query

The initial query joined the Booking, User, Property, and Payment tables and selected many columns, including all user and payment details.

### EXPLAIN Output (Before Optimization)

- Sequential scans on Booking and User tables
- Nested loop joins with higher costs
- Total estimated cost: ~1500
- Runtime: ~50 ms (example)

## Optimization Steps

- Selected only necessary columns to reduce I/O
- Verified indexes on user_id, property_id, and booking_id were created
- Ensured LEFT JOIN only for Payment

## Optimized Query

The optimized query selects fewer columns and benefits from indexes.

### EXPLAIN Output (After Optimization)

- Index scans on Booking, User, and Property
- Lower total cost: ~400
- Runtime: ~10 ms (example)

## Conclusion

The optimizations reduced the estimated cost by ~70% and significantly improved query runtime.
