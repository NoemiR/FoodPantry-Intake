DROP DATABASE IF EXISTS foodpantry;
CREATE DATABASE foodpantry;

\c foodpantry

CREATE TABLE admins(
	id SERIAL PRIMARY KEY,
	username VARCHAR(64),
	password_digest VARCHAR(256)
);