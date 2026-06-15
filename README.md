# Football Ticket Booking System - Database Design & SQL Queries

## Project Overview

This project is a PostgreSQL database design and SQL query implementation for a **Football Ticket Booking System**. The system manages football fans, tournament matches, and ticket booking records.

The project demonstrates database normalization, table relationships, SQL querying techniques, and relational database design concepts.

---

## Objectives

This project was created to demonstrate:

* Entity Relationship Diagram (ERD) Design
* Primary Key and Foreign Key relationships
* One-to-Many and Many-to-One relationships
* SQL query writing using filtering, joins, subqueries, aggregation, null handling, and pagination

---

## Database Schema

The system contains **three main tables**:

### 1. Users Table

Stores all platform users including football fans and ticket managers.

**Fields:**

* `user_id` (Primary Key)
* `full_name`
* `email`
* `role`
* `phone_number`

---

### 2. Matches Table

Stores football match information and ticket pricing details.

**Fields:**

* `match_id` (Primary Key)
* `fixture`
* `tournament_category`
* `base_ticket_price`
* `match_status`

---

### 3. Bookings Table

Stores ticket purchase records made by users.

**Fields:**

* `booking_id` (Primary Key)
* `user_id` (Foreign Key)
* `match_id` (Foreign Key)
* `seat_number`
* `payment_status`
* `total_cost`

---

## Database Relationships

### One-to-Many Relationship

* One user can make multiple bookings.

### Many-to-One Relationship

* Multiple bookings can belong to a single match.

### Booking Mapping

* Each booking belongs to one specific user and one specific match.

---

## Project Files

```text
football-ticket-booking-system/
│
├── schema.sql
├── sample_data.sql
├── QUERY.sql
├── README.md
```

### File Descriptions

#### `schema.sql`

Contains all table creation scripts.

#### `sample_data.sql`

Contains sample insert statements for testing.

#### `QUERY.sql`

Contains all assignment SQL queries.

#### `README.md`

Project documentation.

---

## SQL Concepts Used

The following SQL concepts were implemented in this project:

* SELECT
* WHERE
* AND
* LIKE
* ILIKE
* IS NULL
* COALESCE
* INNER JOIN
* LEFT JOIN
* Subquery
* AVG()
* ORDER BY
* LIMIT
* OFFSET

---

## ERD Design

The ERD includes:

* Primary Keys (PK)
* Foreign Keys (FK)
* One-to-Many relationships
* Crow’s Foot notation

---

## Tools Used

* PostgreSQL
* Beekeeper Studio
* Draw.io
* GitHub

