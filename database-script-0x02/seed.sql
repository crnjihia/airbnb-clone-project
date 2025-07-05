-- Sample Users
INSERT INTO Users (name, email, phone) VALUES
('Alice Smith', 'alice@example.com', '1234567890'),
('Bob Johnson', 'bob@example.com', '0987654321');

-- Sample Properties
INSERT INTO Properties (user_id, title, description, location, price_per_night) VALUES
(1, 'Beach House', 'A lovely beachside house', 'Malibu', 200.00),
(2, 'City Apartment', 'Cozy apartment downtown', 'New York', 150.00);

-- Sample Bookings
INSERT INTO Bookings (user_id, property_id, start_date, end_date, status) VALUES
(2, 1, '2025-07-10', '2025-07-15', 'confirmed');

-- Sample Payments
INSERT INTO Payments (booking_id, amount, payment_date, status) VALUES
(1, 1000.00, '2025-07-05', 'paid');

-- Sample Reviews
INSERT INTO Reviews (user_id, property_id, rating, comment) VALUES
(2, 1, 5, 'Amazing place! Will book again.');
