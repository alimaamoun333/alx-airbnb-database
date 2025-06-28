# Entity-Relationship Diagram Requirements

This document describes the entities, their attributes, and relationships for the Airbnb Clone Database.

---

## Entities and Attributes

### 1️⃣ User
- **user_id** (PK, UUID, Indexed)
- first_name: VARCHAR, NOT NULL
- last_name: VARCHAR, NOT NULL
- email: VARCHAR, UNIQUE, NOT NULL
- password_hash: VARCHAR, NOT NULL
- phone_number: VARCHAR, NULL
- role: ENUM (guest, host, admin), NOT NULL
- created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

---

### 2️⃣ Property
- **property_id** (PK, UUID, Indexed)
- host_id: FK → User(user_id)
- name: VARCHAR, NOT NULL
- description: TEXT, NOT NULL
- location: VARCHAR, NOT NULL
- pricepernight: DECIMAL, NOT NULL
- created_at: TIMESTAMP
- updated_at: TIMESTAMP

---

### 3️⃣ Booking
- **booking_id** (PK, UUID, Indexed)
- property_id: FK → Property(property_id)
- user_id: FK → User(user_id)
- start_date: DATE, NOT NULL
- end_date: DATE, NOT NULL
- total_price: DECIMAL, NOT NULL
- status: ENUM (pending, confirmed, canceled), NOT NULL
- created_at: TIMESTAMP

---

### 4️⃣ Payment
- **payment_id** (PK, UUID, Indexed)
- booking_id: FK → Booking(booking_id)
- amount: DECIMAL, NOT NULL
- payment_date: TIMESTAMP
- payment_method: ENUM (credit_card, paypal, stripe), NOT NULL

---

### 5️⃣ Review
- **review_id** (PK, UUID, Indexed)
- property_id: FK → Property(property_id)
- user_id: FK → User(user_id)
- rating: INTEGER (1–5), NOT NULL
- comment: TEXT, NOT NULL
- created_at: TIMESTAMP

---

### 6️⃣ Message
- **message_id** (PK, UUID, Indexed)
- sender_id: FK → User(user_id)
- recipient_id: FK → User(user_id)
- message_body: TEXT, NOT NULL
- sent_at: TIMESTAMP

---

## Relationships

- A **User** can have many **Properties** (host).
- A **User** can create many **Bookings** (guest).
- A **Property** can have many **Bookings**.
- A **Booking** can have one **Payment**.
- A **User** can write many **Reviews**.
- A **Property** can have many **Reviews**.
- A **User** can send and receive many **Messages**.

---

## Visual Representation

The ER diagram will include:

- All six entities with their attributes.
- Primary keys (PK) and foreign keys (FK).
- One-to-many relationships:
  - User → Properties
  - User → Bookings
  - Property → Bookings
  - Booking → Payment
  - User & Property → Reviews
  - User ↔ Messages



**Export format:**  
PNG image to be saved in `ERD/er_diagram.png`
