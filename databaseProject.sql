drop table reviews;
drop table movies;
drop table users;
drop table admins;
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);
CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_date DATE,
    genre VARCHAR(50),
    director VARCHAR(100),
    duration INT,
    description varchar(300),
    rating DECIMAL(3,1)
);
CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    user_id INT UNIQUE,
    movie_id INT,
    rating DECIMAL(3,1) CHECK (rating<=10.0 and rating>=0),
    comnt varchar2(300) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);
INSERT INTO movies VALUES (1, 'The Shawshank Redemption', TO_DATE('1994-09-23', 'YYYY-MM-DD'), 'Drama', 'Frank Darabont', 142, 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 9.3);
INSERT INTO movies VALUES (2, 'The Godfather', TO_DATE('1972-03-24', 'YYYY-MM-DD'), 'Crime', 'Francis Ford Coppola', 175, 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 9.2);
INSERT INTO movies VALUES (3, 'The Dark Knight', TO_DATE('2008-07-18', 'YYYY-MM-DD'), 'Action', 'Christopher Nolan', 152, 'When the menace known as The Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 9.0);
INSERT INTO movies VALUES (4, 'Pulp Fiction', TO_DATE('1994-10-14', 'YYYY-MM-DD'), 'Crime', 'Quentin Tarantino', 154, 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 8.9);
INSERT INTO users VALUES (1, 'user1', 'user_password1');
INSERT INTO users VALUES (2, 'user2', 'user_password2');
INSERT INTO users VALUES (3, 'user3', 'user_password3');
INSERT INTO users VALUES (4, 'user4', 'user_password4');
INSERT INTO reviews VALUES (1, 1, 1, 8.5, 'Great movie! Really enjoyed the storyline.');
INSERT INTO reviews VALUES (2, 2, 2, 7.2, 'Decent film, but the acting could have been better.');
INSERT INTO reviews VALUES (3, 3, 3, 9.0, 'One of the best movies I have seen recently.');
INSERT INTO reviews VALUES (4, 4, 4, 6.5, 'Not my cup of tea, but might be enjoyable for others.');




