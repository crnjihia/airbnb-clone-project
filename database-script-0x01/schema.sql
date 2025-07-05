CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20)
);

CREATE TABLE Properties (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(id),
    title VARCHAR(100),
    description TEXT,
    location VARCHAR(100),
    price_per_night DECIMAL(10, 2)
);

CREATE TABLE Bookings (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(id),
    property_id INT REFERENCES Properties(id),
    start_date DATE,
    end_date DATE,
    status VARCHAR(20)
);

CREATE TABLE Payments (
    id SERIAL PRIMARY KEY,
    booking_id INT REFERENCES Bookings(id),
    amount DECIMAL(10, 2),
    payment_date DATE,
    status VARCHAR(20)
);

CREATE TABLE Reviews (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(id),
    property_id INT REFERENCES Properties(id),
    rating INT,
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
