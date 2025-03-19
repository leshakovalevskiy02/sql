INSERT INTO books(title, release_year, author)
VALUES ("Горе от ума", 1831, "Александр Грибоедов");

INSERT INTO genres(genre)
VALUES("Стихотворение");

INSERT INTO books_genres(book_id, genre_id)
VALUES 
(5, 2),
(5, 4),
(5, 9);