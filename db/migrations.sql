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

CREATE TABLE registrations(
	id SERIAL PRIMARY KEY,
	date VARCHAR(64),
	family_id INT REFERENCES families(id),
	active BOOLEAN
);
CREATE TABLE schedules(
	id SERIAL PRIMARY KEY,
	date VARCHAR(64),
	title VARCHAR(256),
	note VARCHAR(256),
	type VARCHAR(256),
	volunteer_id REFERENCES volunteers(id),
	family_id INT REFERENCES families(id)
);

CREATE TABLE pickups(
	id SERIAL PRIMARY KEY,
	date VARCHAR(64),
	family_id INT REFERENCES families(id),
	schedule_id INT REFERENCES schedule(id)
);


CREATE TABLE shifts(
	id SERIAL PRIMARY KEY,
	title VARCHAR(256),
	volunteer_id REFERENCES volunteers(id),
	schedule_id INT REFERENCES schedule(id)

);










