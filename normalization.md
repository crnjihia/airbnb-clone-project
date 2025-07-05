# Normalization Explanation

## 1NF
- Each table has a primary key.
- All attributes contain atomic values.
- No repeating groups.

## 2NF
- All non-key attributes are fully functionally dependent on the whole primary key.
- Booking (user_id, property_id) was decomposed to avoid partial dependencies.

## 3NF
- Removed transitive dependencies.
- Moved derived fields like total_price out of Booking.
- Payment table is separate and refers to Booking by booking_id.

All tables are now in 3NF, improving data integrity and reducing redundancy.
