/*T This project is derived from Khan Academy's More advance SQL challenge. While the initial structure of creating tables and inserting values was based on their example, 
the subsequent developments and data filtering were done independently. This project aims to demonstrate my ability to manipulate and filter data using the provided table. */

-- Create a table named "songs" to store information about songs

CREATE TABLE songs (
    id INTEGER PRIMARY KEY,
    title TEXT,
    artist TEXT,
    mood TEXT,
    duration INTEGER,
    released INTEGER);

-- Insert data into the "songs" table
-- Format: (title, artist, mood, duration, released)

INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Bohemian Rhapsody", "Queen", "epic", 60, 1975);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Let it go", "Idina Menzel", "epic", 227, 2013);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will survive", "Gloria Gaynor", "epic", 198, 1978);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Twist and Shout", "The Beatles", "happy", 152, 1963);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("La Bamba", "Ritchie Valens", "happy", 166, 1958);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will always love you", "Whitney Houston", "epic", 273, 1992);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Sweet Caroline", "Neil Diamond", "happy", 201, 1969);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Call me maybe", "Carly Rae Jepsen", "happy", 193, 2011);
    
-- Retrieve the titles of all songs in the "songs" table
SELECT title 
FROM songs;
    
-- Retrieve the titles of songs released after 1990 or with a mood of 'epic'
SELECT title 
FROM songs 
WHERE released>1990 OR mood = 'epic';

-- Retrieve the titles of songs with a mood of 'epic,' released after 1990 and with a duration less than 240 seconds
SELECT title 
FROM songs 
WHERE mood='epic' AND released>1990 AND duration<240;
