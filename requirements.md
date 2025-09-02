AirBnB Database: Entity-Relationship Diagram and Relationships



This document outlines the Entity-Relationship (ER) diagram for an AirBnB database, detailing the entities, their attributes, and the relationships between them. The database is designed to manage users, properties, bookings, payments, reviews, and messages within the AirBnB platform. The ER diagram provides a visual representation of the database structure, facilitating understanding and development.



Entities and Attributes



Here's a breakdown of each entity and its attributes, as specified:



User







user_id: Primary Key, UUID, Indexed



first_name: VARCHAR, NOT NULL



last_name: VARCHAR, NOT NULL



email: VARCHAR, UNIQUE, NOT NULL



password_hash: VARCHAR, NOT NULL



phone_number: VARCHAR, NULL



role: ENUM (guest, host, admin), NOT NULL



created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP



Property







property_id: Primary Key, UUID, Indexed



host_id: Foreign Key, references User(user_id)



name: VARCHAR, NOT NULL



description: TEXT, NOT NULL



location: VARCHAR, NOT NULL



pricepernight: DECIMAL, NOT NULL



created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP



updated_at: TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP



Booking







booking_id: Primary Key, UUID, Indexed



property_id: Foreign Key, references Property(property_id)



user_id: Foreign Key, references User(user_id)



start_date: DATE, NOT NULL



end_date: DATE, NOT NULL



total_price: DECIMAL, NOT NULL



status: ENUM (pending, confirmed, canceled), NOT NULL



created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP



Payment







payment_id: Primary Key, UUID, Indexed



booking_id: Foreign Key, references Booking(booking_id)



amount: DECIMAL, NOT NULL



payment_date: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP



payment_method: ENUM (credit_card, paypal, stripe), NOT NULL



Review







review_id: Primary Key, UUID, Indexed



property_id: Foreign Key, references Property(property_id)



user_id: Foreign Key, references User(user_id)



rating: INTEGER, CHECK: rating >= 1 AND rating <= 5, NOT NULL



comment: TEXT, NOT NULL



created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP



Message







message_id: Primary Key, UUID, Indexed



sender_id: Foreign Key, references User(user_id)



recipient_id: Foreign Key, references User(user_id)



message_body: TEXT, NOT NULL



sent_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP



Relationships Between Entities



The following describes the relationships between the entities in the AirBnB database:







User and Property:



*   Relationship: One-to-many.

*   Description: A User (as a host) can list multiple Properties. A Property is listed by one User (host).

*   Cardinality: 1:N (One User to Many Properties).





User and Booking:



*   Relationship: One-to-many.

*   Description: A User (as a guest) can make multiple Bookings. A Booking is made by one User.

*   Cardinality: 1:N (One User to Many Bookings).





Property and Booking:



*   Relationship: One-to-many.

*   Description: A Property can have multiple Bookings. A Booking is for one Property.

*   Cardinality: 1:N (One Property to Many Bookings).





Booking and Payment:



*   Relationship: One-to-one or One-to-many (depending on business rules). Assuming one payment per booking.

*   Description: A Booking can have one Payment associated with it. A Payment is for one Booking.

*   Cardinality: 1:1 (One Booking to One Payment).  It could be 1:N if partial payments are allowed.





Property and Review:



*   Relationship: One-to-many.

*   Description: A Property can have multiple Reviews. A Review is for one Property.

*   Cardinality: 1:N (One Property to Many Reviews).





User and Review:



*   Relationship: One-to-many.

*   Description: A User can write multiple Reviews. A Review is written by one User.

*   Cardinality: 1:N (One User to Many Reviews).





User and Message:



*   Relationship: Many-to-many (through sender and recipient).

*   Description: A User can send and receive multiple Messages.

*   Cardinality: N:M (Many Users to Many Messages).  This is implemented using two one-to-many relationships: User to Message (as sender) and User to Message (as recipient).



Constraints



The following constraints are enforced:







User Table:





Unique constraint on email.



Non-null constraints on required fields.



Property Table:





Foreign key constraint on host_id.



Non-null constraints on essential attributes.



Booking Table:





Foreign key constraints on property_id and user_id.



status must be one of pending, confirmed, or canceled.



Payment Table:





Foreign key constraint on booking_id, ensuring payment is linked to valid bookings.



Review Table:





Constraints on rating values (1-5).



Foreign key constraints on property_id and user_id.



Message Table:





Foreign key constraints on sender_id and recipient_id.



Indexing



The following indexes are used:







Primary Keys: Indexed automatically.



Additional Indexes:






email in the User table.



property_id in the Property and Booking tables.



booking_id in the Booking and Payment tables.



This ER diagram and relationship definitions provide a solid foundation for developing and maintaining the AirBnB database. The constraints and indexing strategies ensure data integrity and optimize query performance.