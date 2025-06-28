# Database Normalization

This document describes the normalization steps applied to the Airbnb Clone database schema to ensure it is in **Third Normal Form (3NF)**.

---

## 1. First Normal Form (1NF)

**Definition:**  
- All attributes contain only atomic (indivisible) values.
- No repeating groups or arrays.

**Verification:**  
- Each table uses scalar columns (e.g., VARCHAR, DECIMAL, TIMESTAMP).
- No columns store lists or multiple values.
- ✅ All tables satisfy 1NF.

---

## 2. Second Normal Form (2NF)

**Definition:**  
- Table is in 1NF.
- Every non-key attribute is fully dependent on the entire primary key.
- No partial dependencies.

**Verification:**  
- All tables have a single-column primary key (UUID).
- All non-key attributes depend on their respective PK.
- No partial dependencies.
- ✅ All tables satisfy 2NF.

---

## 3. Third Normal Form (3NF)

**Definition:**  
- Table is in 2NF.
- No transitive dependencies (non-key attributes depending on other non-key attributes).

**Verification:**

| Table     | Analysis |
|-----------|----------|
| **User**     | All attributes depend solely on `user_id`. No derived or transitive dependencies. |
| **Property** | All attributes depend solely on `property_id`. |
| **Booking**  | All attributes depend solely on `booking_id`. |
| **Payment**  | All attributes depend solely on `payment_id`. |
| **Review**   | All attributes depend solely on `review_id`. |
| **Message**  | All attributes depend solely on `message_id`. |

**Example of why no transitive dependency exists:**  
- In `Property`, `location` is a direct attribute of the property itself.
- In `Booking`, `status` is determined by booking, not by other non-key fields.

✅ All tables satisfy 3NF.

---

## Summary of Normalization

- **1NF:** Achieved by ensuring atomic columns.
- **2NF:** Achieved because all tables have single-column PKs with no partial dependencies.
- **3NF:** Achieved by eliminating any transitive dependencies.

**Result:**  
The database schema is normalized to **Third Normal Form (3NF)**, reducing redundancy and ensuring data integrity.
