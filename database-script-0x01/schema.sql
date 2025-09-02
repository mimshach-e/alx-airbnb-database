-- AirBnB Database Schema
-- This script creates all tables, constraints, and indexes for the AirBnB platform

-- Enable UUID extension (for PostgreSQL)
-- CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create User table
CREATE TABLE User (
    user_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NULL,
    role ENUM('guest', 'host', 'admin') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Property table
CREATE TABLE Property (
    property_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    host_id CHAR(36) NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(255) NOT NULL,
    pricepernight DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    -- Foreign Key Constraint
    CONSTRAINT fk_property_host FOREIGN KEY (host_id) REFERENCES User(user_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Create Booking table
CREATE TABLE Booking (
    booking_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    property_id CHAR(36) NOT NULL,
    user_id CHAR(36) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    -- Foreign Key Constraints
    CONSTRAINT fk_booking_property FOREIGN KEY (property_id) REFERENCES Property(property_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_booking_user FOREIGN KEY (user_id) REFERENCES User(user_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    
    -- Check Constraints
    CONSTRAINT chk_booking_dates CHECK (end_date > start_date),
    CONSTRAINT chk_total_price CHECK (total_price > 0)
);

-- Create Payment table
CREATE TABLE Payment (
    payment_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    booking_id CHAR(36) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method ENUM('credit_card', 'paypal', 'stripe') NOT NULL,
    
    -- Foreign Key Constraint
    CONSTRAINT fk_payment_booking FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    
    -- Check Constraint
    CONSTRAINT chk_payment_amount CHECK (amount > 0)
);

-- Create Review table
CREATE TABLE Review (
    review_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    property_id CHAR(36) NOT NULL,
    user_id CHAR(36) NOT NULL,
    rating INTEGER NOT NULL,
    comment TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    -- Foreign Key Constraints
    CONSTRAINT fk_review_property FOREIGN KEY (property_id) REFERENCES Property(property_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_review_user FOREIGN KEY (user_id) REFERENCES User(user_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    
    -- Check Constraints
    CONSTRAINT chk_rating_range CHECK (rating >= 1 AND rating <= 5)
);

-- Create Message table
CREATE TABLE Message (
    message_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    sender_id CHAR(36) NOT NULL,
    recipient_id CHAR(36) NOT NULL,
    message_body TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    -- Foreign Key Constraints
    CONSTRAINT fk_message_sender FOREIGN KEY (sender_id) REFERENCES User(user_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_message_recipient FOREIGN KEY (recipient_id) REFERENCES User(user_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    
    -- Check Constraint to prevent self-messaging
    CONSTRAINT chk_no_self_message CHECK (sender_id != recipient_id)
);

-- Create Indexes for Performance Optimization

-- User table indexes
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_role ON User(role);

-- Property table indexes  
CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_price ON Property(pricepernight);

-- Booking table indexes
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_status ON Booking(status);
CREATE INDEX idx_booking_dates ON Booking(start_date, end_date);

-- Payment table indexes
CREATE INDEX idx_payment_booking_id ON Payment(booking_id);
CREATE INDEX idx_payment_date ON Payment(payment_date);
CREATE INDEX idx_payment_method ON Payment(payment_method);

-- Review table indexes
CREATE INDEX idx_review_property_id ON Review(property_id);
CREATE INDEX idx_review_user_id ON Review(user_id);
CREATE INDEX idx_review_rating ON Review(rating);

-- Message table indexes
CREATE INDEX idx_message_sender_id ON Message(sender_id);
CREATE INDEX idx_message_recipient_id ON Message(recipient_id);
CREATE INDEX idx_message_sent_at ON Message(sent_at);

-- Composite indexes for common query patterns
CREATE INDEX idx_property_host_created ON Property(host_id, created_at);
CREATE INDEX idx_booking_user_status ON Booking(user_id, status);
CREATE INDEX idx_review_property_rating ON Review(property_id, rating);

-- Additional useful indexes
CREATE INDEX idx_user_created_at ON User(created_at);
CREATE INDEX idx_property_created_at ON Property(created_at);
CREATE INDEX idx_booking_created_at ON Booking(created_at);
CREATE INDEX idx_review_created_at ON Review(created_at);

-- Note: Primary keys are automatically indexed in most database systems
-- The above schema includes comprehensive constraints and indexes for optimal performance