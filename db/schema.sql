drop database if exists burgers_db;
CREATE DATABASE burgers_db;

USE burgers_db;

create table burgers
(
    id int NOT NULL
    AUTO_INCREMENT,
	burger_name varchar
    (100) NOT NULL,
    devoured boolean,
	PRIMARY KEY
    (id)
);

    insert into burgers
        (id, burger_name, devoured)
    values
        (1, "Double Cheeseburger", true);
    insert into burgers
        (id, burger_name, devoured)
    values
        (2, "Big Mac", true);
    insert into burgers
        (id, burger_name, devoured)
    values
        (3, "The Whiskey Burger", false);