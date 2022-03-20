create table if not exists staff (
id serial primary key,
name_employee varchar(100) not null,
name_department varchar(100) not null,
head_of_department  integer references staff(id)
);