# Database Schema for Airbnb Clone

This folder contains the SQL DDL script to create the database schema.

## Files

- `schema.sql`: Defines all tables, constraints, and indexes.

## Entities

1. **User**
2. **Property**
3. **Booking**
4. **Payment**
5. **Review**
6. **Message**

## Instructions

To execute the script:

1. Connect to your PostgreSQL database:

2. Run:


## Notes

- All tables use `UUID` as primary keys.
- Foreign keys enforce cascading deletes.
- Indexes are created on frequently queried columns for performance.
