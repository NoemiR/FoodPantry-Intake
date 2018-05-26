DROP DATABASE IF EXISTS foodpantry;
CREATE DATABASE foodpantry;

\c foodpantry

CREATE TABLE admins(
	id SERIAL PRIMARY KEY,
	username VARCHAR(64),
	password_digest VARCHAR(256)
);

CREATE TABLE families(
	id SERIAL PRIMARY KEY,
	name VARCHAR(256),
	address VARCHAR(256),
	phone VARCHAR(256),
	income NUMERIC,
	household VARCHAR(256),
	employment BOOLEAN,
	birthdate VARCHAR(256),	
	intake VARCHAR(256),
	active BOOLEAN

);
