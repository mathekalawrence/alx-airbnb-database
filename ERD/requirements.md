# AirBnB Database ER Diagram Requirements

## Entities
1. **User**
   - Primary Key: user_id (UUID)
   - Attributes: first_name, last_name, email, password_hash, phone_number, role, created_at
   - Constraints: email UNIQUE, role ENUM(guest, host, admin)

2. **Property** 
   - Primary Key: property_id (UUID)
   - Foreign Key: host_id → User.user_id
   - Attributes: name, description, location, pricepernight, created_at, updated_at

3. **Booking**
   - Primary Key: booking_id (UUID)
   - Foreign Keys: property_id → Property.property_id, user_id → User.user_id
   - Attributes: start_date, end_date, total_price, status, created_at
   - Constraints: status ENUM(pending, confirmed, canceled)

4. **Payment**
   - Primary Key: payment_id (UUID)
   - Foreign Key: booking_id → Booking.booking_id
   - Attributes: amount, payment_date, payment_method
   - Constraints: payment_method ENUM(credit_card, paypal, stripe)

5. **Review**
   - Primary Key: review_id (UUID)
   - Foreign Keys: property_id → Property.property_id, user_id → User.user_id
   - Attributes: rating, comment, created_at
   - Constraints: rating CHECK(1-5)

6. **Message**
   - Primary Key: message_id (UUID)
   - Foreign Keys: sender_id → User.user_id, recipient_id → User.user_id
   - Attributes: message_body, sent_at

## Relationships
- User (1) → (N) Property [host relationship]
- User (1) → (N) Booking [guest relationship]  
- Property (1) → (N) Booking
- Booking (1) → (1) Payment
- User (1) → (N) Review
- Property (1) → (N) Review
- User (N) → (N) User [via Message entity]

## Indexing Strategy
- All primary keys automatically indexed
- Additional indexes on: User.email, Property.property_id, Booking.property_id
