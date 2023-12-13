CREATE TABLE customers (
    customer_id_ SERIAL PRIMARY KEY,
    customer_Name VARCHAR (50), 
    phone_number INTEGER,
    email VARCHAR NOT NULL
)


CREATE TABLE tickets (
    Ticket_id SERIAL PRIMARY KEY,
    Ticket_number INTEGER NOT NULL,
    Seat_number INTEGER NOT NULL,
    Room_number INTEGER NOT NULL,
    Price NUMERIC(8,2),
    customer_id_ INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id_) REFERENCES customers (customer_id_),
    FOREIGN KEY(movie_id) REFERENCES movies (movie_id)
)


CREATE TABLE movies (
    Movie_id SERIAL PRIMARY KEY,
    Movie_name VARCHAR,
    Movie_time INTEGER NOT NULL,
    Movie_rating INTEGER NOT NULL,
    Ticket_id INTEGER NOT NULL,
    FOREIGN KEY(ticket_id) REFERENCES customers (customer_id_)
)


CREATE TABLE consessions (
    customer_id_ SERIAL PRIMARY KEY,
    popcorn VARCHAR,
    drink VARCHAR,
    candy VARCHAR,
    FOREIGN KEY(customer_id_) REFERENCES customers (customer_id_)
)



