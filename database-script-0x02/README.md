#Airbnb Database Seeding Script

## Overview
This script populates the **Airbnb Database** with sample data for testing and demonstration purposes.  
It inserts records into the following tables:
- `users`
- `properties`
- `bookings`
- `payments`

The data ideally reflects realistic usage of an Airbnb-like platform, with hosts, guests, bookings, and payments.

---

## How to Use

### 1. Ensuring the database and tables are already created
Make sure you’ve already created the database schema and tables before running this seed script.

### 2️. Running the seed script
mysql -u <username> -p <database_name> < database-script-0x02/seed.sql

