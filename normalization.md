# Database Normalization to 3NF -The AirBnB Database

## Initial Schema Analysis

### Current Entities:
1. **User**
2. **Property**
3. **Booking**
4. **Payment**
5. **Review**
6. **Message**

## Normalization Process

### First Normal Form (1NF) - Eliminating Repeating Groups

**Analysis:**
All tables already satisfy 1NF:
- Each table has a primary key
- All attributes contain atomic values
- No repeating groups found
- Each column contains single values

**✅ PASSES 1NF**

### Second Normal Form (2NF) - Remove Partial Dependencies

**Analysis for partial dependencies:**

#### User Table
- `user_id` is the primary key
- All attributes fully depend on `user_id`
- No composite primary key -> no partial dependencies

#### Property Table
- `property_id` is the primary key
- All attributes fully depend on `property_id`
- `host_id` is a foreign key, not part of primary key

#### Booking Table
- `booking_id` is the primary key (single column)
- All attributes functionally depend on `booking_id`
- `property_id` and `user_id` are foreign keys

#### Payment Table
- `payment_id` is the primary key
- All attributes depend on `payment_id`
- `booking_id` is a foreign key

#### Review Table
- `review_id` is the primary key
- All attributes depend on `review_id`
- `property_id` and `user_id` are foreign keys

#### Message Table
- `message_id` is the primary key
- All attributes depend on `message_id`
- `sender_id` and `recipient_id` are foreign keys

**✅ PASSES 2NF**

### Third Normal Form (3NF) - Removing Transitive Dependencies

**Analysis for transitive dependencies:**

#### User Table Analysis
```sql
User(user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
