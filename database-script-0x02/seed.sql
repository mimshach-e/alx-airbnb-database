-- AirBnB Database Sample Data Population Script
-- This script populates the database with realistic sample data for testing and development

-- Insert sample Users (mix of guests, hosts, and admins)
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
-- Hosts
('550e8400-e29b-41d4-a716-446655440001', 'John', 'Smith', 'john.smith@email.com', '$2y$10$abcdefghijklmnopqrstuvwxyz123456', '+1-555-0101', 'host', '2023-01-15 10:30:00'),
('550e8400-e29b-41d4-a716-446655440002', 'Sarah', 'Johnson', 'sarah.johnson@email.com', '$2y$10$bcdefghijklmnopqrstuvwxyz234567', '+1-555-0102', 'host', '2023-02-20 14:20:00'),
('550e8400-e29b-41d4-a716-446655440003', 'Michael', 'Williams', 'michael.williams@email.com', '$2y$10$cdefghijklmnopqrstuvwxyz345678', '+1-555-0103', 'host', '2023-03-10 09:45:00'),
('550e8400-e29b-41d4-a716-446655440004', 'Emma', 'Davis', 'emma.davis@email.com', '$2y$10$defghijklmnopqrstuvwxyz456789', '+44-20-7946-0958', 'host', '2023-04-05 16:15:00'),
('550e8400-e29b-41d4-a716-446655440005', 'Carlos', 'Rodriguez', 'carlos.rodriguez@email.com', '$2y$10$efghijklmnopqrstuvwxyz567890', '+34-91-123-4567', 'host', '2023-05-12 11:00:00'),

-- Guests
('550e8400-e29b-41d4-a716-446655440006', 'Jessica', 'Miller', 'jessica.miller@email.com', '$2y$10$fghijklmnopqrstuvwxyz678901', '+1-555-0106', 'guest', '2023-06-18 08:30:00'),
('550e8400-e29b-41d4-a716-446655440007', 'David', 'Wilson', 'david.wilson@email.com', '$2y$10$ghijklmnopqrstuvwxyz789012', '+1-555-0107', 'guest', '2023-07-22 13:45:00'),
('550e8400-e29b-41d4-a716-446655440008', 'Lisa', 'Brown', 'lisa.brown@email.com', '$2y$10$hijklmnopqrstuvwxyz890123', '+1-555-0108', 'guest', '2023-08-14 17:20:00'),
('550e8400-e29b-41d4-a716-446655440009', 'Robert', 'Taylor', 'robert.taylor@email.com', '$2y$10$ijklmnopqrstuvwxyz901234', '+1-555-0109', 'guest', '2023-09-03 12:10:00'),
('550e8400-e29b-41d4-a716-446655440010', 'Amanda', 'Anderson', 'amanda.anderson@email.com', '$2y$10$jklmnopqrstuvwxyz012345', '+1-555-0110', 'guest', '2023-10-11 15:35:00'),
('550e8400-e29b-41d4-a716-446655440011', 'James', 'Thomas', 'james.thomas@email.com', '$2y$10$klmnopqrstuvwxyz123456', '+1-555-0111', 'guest', '2023-11-25 09:15:00'),
('550e8400-e29b-41d4-a716-446655440012', 'Maria', 'Garcia', 'maria.garcia@email.com', '$2y$10$lmnopqrstuvwxyz234567', '+1-555-0112', 'guest', '2023-12-08 14:50:00'),

-- Admin
('550e8400-e29b-41d4-a716-446655440013', 'Admin', 'User', 'admin@airbnb.com', '$2y$10$mnopqrstuvwxyz345678admin', '+1-555-0113', 'admin', '2023-01-01 00:00:00');

-- Insert sample Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
-- John Smith's properties
('660e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440001', 'Cozy Downtown Apartment', 'Beautiful 2-bedroom apartment in the heart of downtown. Walking distance to restaurants, shops, and public transportation. Perfect for business travelers and tourists alike.', 'New York, NY', 150.00, '2023-01-16 11:00:00', '2023-01-16 11:00:00'),
('660e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440001', 'Brooklyn Loft Studio', 'Modern loft studio with exposed brick walls and high ceilings. Features a full kitchen, workspace area, and rooftop access. Great for creative professionals.', 'Brooklyn, NY', 120.00, '2023-02-01 10:30:00', '2023-02-01 10:30:00'),

-- Sarah Johnson's properties
('660e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440002', 'Beachfront Villa', 'Stunning 4-bedroom villa right on the beach. Private pool, outdoor kitchen, and breathtaking ocean views. Perfect for families and groups looking for a luxury getaway.', 'Miami, FL', 350.00, '2023-02-21 15:00:00', '2023-02-21 15:00:00'),

-- Michael Williams's properties
('660e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440003', 'Mountain Cabin Retreat', 'Rustic 3-bedroom cabin nestled in the mountains. Fireplace, hot tub, and hiking trails nearby. Ideal for nature lovers and those seeking peace and quiet.', 'Aspen, CO', 200.00, '2023-03-11 12:15:00', '2023-03-11 12:15:00'),
('660e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440003', 'Urban Townhouse', 'Stylish 3-bedroom townhouse in trendy neighborhood. Modern amenities, private garden, and close to nightlife and dining. Great for group stays.', 'Denver, CO', 180.00, '2023-04-15 09:20:00', '2023-04-15 09:20:00'),

-- Emma Davis's properties
('660e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440004', 'London Central Flat', 'Elegant 1-bedroom flat in Central London. Recently renovated with modern furnishings. Walking distance to major attractions and tube stations.', 'London, UK', 180.00, '2023-04-06 17:30:00', '2023-04-06 17:30:00'),
('660e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440004', 'Countryside Cottage', 'Charming 2-bedroom cottage in the English countryside. Beautiful garden, traditional features, and peaceful surroundings. Perfect for romantic getaways.', 'Cotswolds, UK', 140.00, '2023-05-20 14:45:00', '2023-05-20 14:45:00'),

-- Carlos Rodriguez's properties
('660e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440005', 'Madrid City Center Apartment', 'Modern 2-bedroom apartment in the heart of Madrid. Air conditioning, full kitchen, and balcony overlooking the city. Close to museums and restaurants.', 'Madrid, Spain', 110.00, '2023-05-13 13:20:00', '2023-05-13 13:20:00'),
('660e8400-e29b-41d4-a716-446655440009', '550e8400-e29b-41d4-a716-446655440005', 'Barcelona Beach Apartment', 'Bright 1-bedroom apartment just steps from the beach. Terrace with sea views, modern kitchen, and excellent location for exploring the city.', 'Barcelona, Spain', 130.00, '2023-06-10 16:00:00', '2023-06-10 16:00:00');

-- Insert sample Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
-- Confirmed bookings
('770e8400-e29b-41d4-a716-446655440001', '660e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440006', '2024-01-15', '2024-01-18', 450.00, 'confirmed', '2024-01-10 14:30:00'),
('770e8400-e29b-41d4-a716-446655440002', '660e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440007', '2024-02-10', '2024-02-17', 2450.00, 'confirmed', '2024-02-01 09:15:00'),
('770e8400-e29b-41d4-a716-446655440003', '660e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440008', '2024-03-05', '2024-03-12', 1400.00, 'confirmed', '2024-02-28 16:45:00'),
('770e8400-e29b-41d4-a716-446655440004', '660e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440009', '2024-03-20', '2024-03-25', 900.00, 'confirmed', '2024-03-15 11:20:00'),
('770e8400-e29b-41d4-a716-446655440005', '660e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440010', '2024-04-01', '2024-04-07', 660.00, 'confirmed', '2024-03-25 13:10:00'),

-- Pending bookings
('770e8400-e29b-41d4-a716-446655440006', '660e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440011', '2024-05-15', '2024-05-20', 600.00, 'pending', '2024-05-10 10:30:00'),
('770e8400-e29b-41d4-a716-446655440007', '660e8400-e29b-41d4-a716-446655440009', '550e8400-e29b-41d4-a716-446655440012', '2024-06-01', '2024-06-05', 520.00, 'pending', '2024-05-28 15:45:00'),

-- Canceled bookings
('770e8400-e29b-41d4-a716-446655440008', '660e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440006', '2024-04-20', '2024-04-25', 900.00, 'canceled', '2024-04-15 12:00:00'),
('770e8400-e29b-41d4-a716-446655440009', '660e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440007', '2024-05-01', '2024-05-08', 980.00, 'canceled', '2024-04-25 14:15:00');

-- Insert sample Payments (only for confirmed bookings)
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('880e8400-e29b-41d4-a716-446655440001', '770e8400-e29b-41d4-a716-446655440001', 450.00, '2024-01-10 14:35:00', 'credit_card'),
('880e8400-e29b-41d4-a716-446655440002', '770e8400-e29b-41d4-a716-446655440002', 2450.00, '2024-02-01 09:20:00', 'stripe'),
('880e8400-e29b-41d4-a716-446655440003', '770e8400-e29b-41d4-a716-446655440003', 1400.00, '2024-02-28 16:50:00', 'paypal'),
('880e8400-e29b-41d4-a716-446655440004', '770e8400-e29b-41d4-a716-446655440004', 900.00, '2024-03-15 11:25:00', 'credit_card'),
('880e8400-e29b-41d4-a716-446655440005', '770e8400-e29b-41d4-a716-446655440005', 660.00, '2024-03-25 13:15:00', 'stripe');

-- Insert sample Reviews (only for completed stays)
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('990e8400-e29b-41d4-a716-446655440001', '660e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440006', 5, 'Amazing apartment in perfect location! John was a great host, very responsive and helpful. The place was exactly as described and spotlessly clean. Would definitely stay here again!', '2024-01-19 10:30:00'),

('990e8400-e29b-41d4-a716-446655440002', '660e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440007', 5, 'Absolutely incredible beachfront villa! The views were breathtaking and the amenities were top-notch. Perfect for our family vacation. Sarah was an excellent host who made sure we had everything we needed.', '2024-02-18 16:45:00'),

('990e8400-e29b-41d4-a716-446655440003', '660e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440008', 4, 'Beautiful mountain cabin with stunning views. The hot tub was perfect after a day of hiking. Only minor issue was the WiFi was a bit slow, but that actually helped us disconnect and enjoy nature more!', '2024-03-13 14:20:00'),

('990e8400-e29b-41d4-a716-446655440004', '660e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440009', 5, 'Fantastic location in London! Walking distance to everything we wanted to see. Emma was very welcoming and provided great local recommendations. The flat was modern and comfortable.', '2024-03-26 11:15:00'),

('990e8400-e29b-41d4-a716-446655440005', '660e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440010', 4, 'Great apartment in Madrid city center. Very convenient location and Carlos was helpful with check-in. The apartment was clean and well-equipped. Only wish it had been a bit quieter at night due to street noise.', '2024-04-08 09:30:00'),

-- Additional reviews for properties with multiple reviews
('990e8400-e29b-41d4-a716-446655440006', '660e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440007', 4, 'Great location and clean apartment. John was responsive to our questions. The only downside was some noise from the street at night, but overall a good stay.', '2024-02-20 13:45:00'),

('990e8400-e29b-41d4-a716-446655440007', '660e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440008', 5, 'Second time staying at Sarah\'s villa and it\'s always perfect! The private pool and beach access can\'t be beat. Highly recommend for anyone looking for luxury accommodation in Miami.', '2024-03-10 12:30:00');

-- Insert sample Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
-- Pre-booking inquiries
('aa0e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440001', 'Hi John! I\'m interested in booking your downtown apartment for January 15-18. Is it available? Also, is there parking available?', '2024-01-09 14:20:00'),
('aa0e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440006', 'Hi Jessica! Yes, the apartment is available for those dates. There\'s a parking garage just around the corner that charges $25/day. Would you like me to send you the details?', '2024-01-09 15:30:00'),
('aa0e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440001', 'That sounds perfect! Yes, please send the parking details. I\'ll go ahead and book now.', '2024-01-09 16:45:00'),

-- Booking confirmation messages
('aa0e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440006', 'Thanks for booking! I\'ve sent you the check-in instructions via email. The parking garage is at 123 Park Street. Looking forward to hosting you!', '2024-01-10 15:00:00'),

-- Guest-host communication during stay
('aa0e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440002', 'Hi Sarah! We just arrived at the villa and it\'s absolutely beautiful! Thank you so much. Quick question - how do we turn on the pool lights for evening?', '2024-02-10 18:30:00'),
('aa0e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440007', 'So glad you love it! For the pool lights, there\'s a switch panel by the back door - it\'s the blue button. Enjoy your evening swim! 🏊‍♂️', '2024-02-10 19:15:00'),

-- Post-stay follow-up
('aa0e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440008', 'Hi Lisa! Hope you enjoyed your stay at the mountain cabin. Would love to get your feedback when you have a moment. Thanks for being such great guests!', '2024-03-13 10:00:00'),
('aa0e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440003', 'Hi Michael! We had an absolutely wonderful time. The cabin exceeded our expectations and the hiking recommendations were perfect. Just left a review. Thank you again!', '2024-03-13 14:30:00'),

-- Booking inquiry for pending booking
('aa0e8400-e29b-41d4-a716-446655440009', '550e8400-e29b-41d4-a716-446655440011', '550e8400-e29b-41d4-a716-446655440001', 'Hello! I\'m interested in your Brooklyn loft for May 15-20. I\'m a photographer and love the industrial aesthetic. Would this be suitable for some indoor photo work?', '2024-05-09 13:20:00'),
('aa0e8400-e29b-41d4-a716-446655440010', '550e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440011', 'Hi James! The loft would be perfect for photography - the natural light is amazing and the exposed brick provides great texture. Just let me know if you need any specific equipment moved. I\'ll approve your booking request!', '2024-05-09 16:45:00'),

-- Cancellation communication
('aa0e8400-e29b-41d4-a716-446655440011', '550e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440003', 'Hi Michael, I\'m so sorry but I need to cancel my booking for April 20-25. Something came up with work. I understand if there are cancellation fees.', '2024-04-16 09:30:00'),
('aa0e8400-e29b-41d4-a716-446655440012', '550e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440006', 'Hi Jessica, no worries at all - these things happen! Since it\'s more than 48 hours notice, I can offer a full refund. Hope everything works out with work. You\'re welcome back anytime!', '2024-04-16 11:15:00');

-- Display summary of inserted data
SELECT 'Data Population Complete!' as Status;

SELECT 
    'Users' as Entity,
    COUNT(*) as Total_Records,
    SUM(CASE WHEN role = 'host' THEN 1 ELSE 0 END) as Hosts,
    SUM(CASE WHEN role = 'guest' THEN 1 ELSE 0 END) as Guests,
    SUM(CASE WHEN role = 'admin' THEN 1 ELSE 0 END) as Admins
FROM User

UNION ALL

SELECT 
    'Properties' as Entity,
    COUNT(*) as Total_Records,
    NULL as Hosts,
    NULL as Guests, 
    NULL as Admins
FROM Property

UNION ALL

SELECT 
    'Bookings' as Entity,
    COUNT(*) as Total_Records,
    SUM(CASE WHEN status = 'confirmed' THEN 1 ELSE 0 END) as Confirmed,
    SUM(CASE WHEN status = 'pending' THEN 1 ELSE 0 END) as Pending,
    SUM(CASE WHEN status = 'canceled' THEN 1 ELSE 0 END) as Canceled
FROM Booking

UNION ALL

SELECT 
    'Payments' as Entity,
    COUNT(*) as Total_Records,
    NULL as Hosts,
    NULL as Guests,
    NULL as Admins
FROM Payment

UNION ALL

SELECT 
    'Reviews' as Entity,
    COUNT(*) as Total_Records,
    NULL as Hosts,
    NULL as Guests,
    NULL as Admins
FROM Review

UNION ALL

SELECT 
    'Messages' as Entity,
    COUNT(*) as Total_Records,
    NULL as Hosts,
    NULL as Guests,
    NULL as Admins
FROM Message;