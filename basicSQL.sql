-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-03-29 03:50:14.269

-- tables
-- Table: movies
CREATE TABLE movies (
    id int NOT NULL,
    title text NOT NULL,
    CONSTRAINT movies_pk PRIMARY KEY (id)
);

-- Table: showtimes
CREATE TABLE showtimes (
    id int NOT NULL,
    time text NOT NULL,
    movies_id int NOT NULL,
    theatres_id int NOT NULL,
    CONSTRAINT showtimes_pk PRIMARY KEY (id)
);

-- Table: theatres
CREATE TABLE theatres (
    id int NOT NULL,
    name text NOT NULL,
    CONSTRAINT theatres_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: showtimes_movies (table: showtimes)
ALTER TABLE showtimes ADD CONSTRAINT showtimes_movies FOREIGN KEY showtimes_movies (movies_id)
    REFERENCES movies (id);

-- Reference: showtimes_theatres (table: showtimes)
ALTER TABLE showtimes ADD CONSTRAINT showtimes_theatres FOREIGN KEY showtimes_theatres (theatres_id)
    REFERENCES theatres (id);

-- End of file.

