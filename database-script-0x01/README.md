
# AirBnB Database Schema

## Overview
This directory contains the SQL schema definition for the AirBnB-like booking system database. 
The schema is designed in normalized form (3NF) and optimized for performance.

## Files
- `schema.sql` - Complete database schema with tables, constraints, and indexes

## Database Structure

### Tables

1. **users** - Stores user information
   - Primary Key: `user_id` (UUID)
   - Supports roles: guest, host, admin
   - Unique email constraint

2. **properties** - Stores property listings
   - Primary Key: `property_id` (UUID)
   - Foreign Key: `host_id` references users(user_id)
   - Includes pricing and location data

3. **bookings** - Manages property reservations
   - Primary Key: `booking_id` (UUID)
   - Foreign Keys: `property_id`, `user_id`
   - Supports booking status: pending, confirmed, cancelled, other

4. **payments** - Tracks payment transactions
   - Primary Key: `payment_id` (UUID)
   - Foreign Key: `booking_id` references bookings(booking_id)
   - Multiple payment methods supported

5. **reviews** - Stores user reviews for properties
   - Primary Key: `review_id` (UUID)
   - Foreign Keys: `property_id`, `user_id`
   - Unique constraint: one review per property /and per user

6. **messages** - Manages user communications
   - Primary Key: `message_id` (UUID)
   - Foreign Keys: `sender_id`, `recipient_id` both reference users(user_id)

## Key Features

### Constraints
- Primary keys using UUID for global uniqueness
- Foreign key constraints with CASCADE delete
- CHECK constraints for data validation
- UNIQUE constraints where appropriate
- NOT NULL constraints on required fields

### Indexes
- Primary key indexes (automatic)
- Foreign key indexes for join performance
- Composite indexes for common query patterns
- Functional indexes for optimized searches

### Data Types
- **UUID**: `VARCHAR(36)` with UUID() default
- **Text**: `VARCHAR` for short text, `TEXT` for long content
- **Numeric**: `DECIMAL(10,2)` for monetary values
- **Temporal**: `TIMESTAMP` for audit trails, `DATE` for bookings
- **Enumerated**: `ENUM` for fixed value sets

