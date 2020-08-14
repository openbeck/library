insert into reader(id, first_name, last_name) values
(1, 'John', 'Doe'),
(2, 'Elon', 'Musk'),
(3, 'Sylvanas', 'Windrunner'),
(4, 'Jaina', 'Proudmoor'),
(5, 'Varian', 'Wrynn');

insert into author(id, first_name, last_name, b_day) values
(1, 'George', 'Orwell', '1903-06-25'),
(2, 'Stephen', 'King', '1947-09-21'),
(3, 'Jane', 'Austen', '1775-12-16'),
(4, 'Franz', 'Kafka', '1883-07-03'),
(5, 'Dan', 'Brown', '1964-06-22'),
(6, 'Harper', 'Lee', '1926-04-28');

insert into book(id, name, publishing_house, year) values
(1, '1984', 'АСТ', '1949-08-15'),
(2, 'Animal Farm', 'АСТ', '1947-07-17'),
(3, 'Pride and Prejudice', 'New sun', '1813-01-28'),
(4, 'The Gunslinger', 'October', '1982-06-10'),
(5, 'The Trial', 'New sun', '1925-07-11'),
(6, 'To Kill a Mockingbird', 'АСТ', '1960-07-11');

insert into author_book(id, author_id, book_id) values
(1,1,1),
(2,2,4),
(3,1,2),
(4,3,3),
(5,4,5),
(6,6,6);

insert into rent(id,book_id, reader_id, start_date, end_date) values
(1, 1, 1, '2020-05-15', '2020-05-20'),
(2, 1, 2, '2020-05-21', '2020-06-01'),
(3, 2, 3, '2020-02-15', '2020-05-20'),
(4, 3, 4, '2020-09-10', '2020-11-11');