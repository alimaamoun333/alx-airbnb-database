# Performance Monitoring and Refinement Report

## Queries Monitored

**Query 1: Retrieve bookings in a date range**
```sql
SELECT * FROM Booking WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';

SELECT p.property_id, p.name, r.review_id, r.rating
FROM Property p
LEFT JOIN Review r ON p.property_id = r.property_id
WHERE p.location = 'New York';

SELECT b.booking_id, u.first_name, p.name, pay.amount
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id
WHERE b.status = 'confirmed';
