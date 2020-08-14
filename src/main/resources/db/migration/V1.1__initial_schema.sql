create table  reader (
 id BIGSERIAL primary key,
 first_name VARCHAR(255) not null,
 last_name VARCHAR(255) not null
);

create table author (
 id BIGSERIAL primary key,
 first_name VARCHAR(255) not null,
 last_name VARCHAR(255) not null,
 b_day DATE not null
);

create table book (
 id BIGSERIAL primary key,
 name VARCHAR(255) not null,
 publishing_house VARCHAR(255) not null,
 year DATE not null
);


create table author_book (
 id BIGSERIAL primary key,
 author_id BIGINT not null,
 book_id  BIGINT not null,
 constraint author_book_author_id_pk foreign key(author_id) references author(id)  on delete cascade on update cascade,
 constraint author_book_book_id_pk foreign key(book_id) references book(id) on delete cascade on update cascade
);

create table rent (
 id BIGSERIAL primary key,
 book_id BIGINT not null,
 reader_id BIGINT not null,
 start_date DATE not null,
 end_date DATE not null,
 constraint rent_book_id foreign key(book_id) references book(id) on delete cascade on update cascade,
 constraint rent_reader_id foreign key(reader_id) references reader(id) on delete cascade on update cascade
 );




