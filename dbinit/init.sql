CREATE DATABASE user_notes;

USE user_notes;

CREATE TABLE IF NOT EXISTS user (
    id int NOT NULL AUTO_INCREMENT,
    email varchar(150),
    first_name varchar(150),
    password varchar(150),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS note (
    id INT NOT NULL AUTO_INCREMENT,
    data varchar(10000),
    date datetime,
    user_id int,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user(id)
);