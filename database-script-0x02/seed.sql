
-- Clearing existing data for testing
DELETE FROM payments;
DELETE FROM bookings;
DELETE FROM properties;
DELETE FROM users;

-- USERS TABLE
INSERT INTO users (id, name, email, phone_number, country)
VALUES
(1, 'Alicia John', 'aliciajohn@gmail.com', '+254711670091', 'Kenya'),
(2, 'Larry Muia', 'larrymuia@gmail.com', '+254797310111', 'Kenya'),
(3, 'Jane Wanjiru', 'janewanjiru@yahoo.com', '+255700223344', 'Tanzania'),
(4, 'Patrick Njoroge', 'patricknjoroge@gmail.com', '+256790112203', 'Uganda'),
(5, 'Cynthia Mutinda', 'cynthiamutinda@gmail.com', '+254700111882', 'Kenya');  


-- PROPERTIES TABLE
INSERT INTO properties (id, host_id, title, description, location, price_per_stay, capacity)
VALUES
(1, 1, 'Cozy Apartment in Nairobi', 'Modern 1-bedroom apartment near Westlands', 'Nairobi, Kenya', 11500.00, 6),
(2, 2, 'Luxury Beach Villa', '5-bedroom oceanfront villa with pool', 'Mombasa, Kenya', 19000.00, 10),
(3, 3, 'Lake View Cabin', 'Quiet cabin with scenic lake view', 'Kisumu, Kenya', 10000.00, 14),
(4, 4, 'City Center Studio', 'Compact studio perfect for short stays', 'Kampala, Uganda', 3500.00, 5),
(5, 1, 'Safari Lodge', 'Lodge near Maasai Mara with game drive access', 'Narok, Kenya', 12000.00, 26);

-- BOOKINGS TABLE
INSERT INTO bookings (id, user_id, property_id, check_in_date, check_out_date, total_price, status)
VALUES
(1, 2, 1, '2025-10-20', '2025-10-23', 13500.00, 'confirmed'),
(2, 3, 2, '2025-11-01', '2025-11-05', 72000.00, 'pending'),
(3, 4, 3, '2025-10-25', '2025-10-28', 18000.00, 'confirmed'),
(4, 1, 4, '2025-11-10', '2025-11-12', 9000.00, 'cancelled'),
(5, 5, 5, '2025-12-01', '2025-12-04', 36000.00, 'confirmed');

-- PAYMENTS TABLE
INSERT INTO payments (id, booking_id, amount, payment_date, method, status)
VALUES
(1, 1, 13500.00, '2025-10-18', 'Mpesa', 'completed'),
(2, 2, 72000.00, '2025-10-28', 'Credit Card', 'pending'),
(3, 3, 18000.00, '2025-10-24', 'Bank Transfer', 'completed'),
(4, 4, 9000.00, '2025-11-09', 'Mpesa', 'refunded'),
(5, 5, 36000.00, '2025-11-29', 'Mpesa', 'completed');


