INSERT INTO admins (username, password_digest) VALUES ('nana', '1234');
INSERT INTO admins (username, password_digest) VALUES ('ale', '4321');
INSERT INTO admins (username, password_digest) VALUES ('rene', '5678');
INSERT INTO admins (username, password_digest) VALUES ('noemi', '8765');
INSERT INTO admins (username, password_digest) VALUES ('AJ', '2749');
INSERT INTO admins (username, password_digest) VALUES ('Liz', '9472');

INSERT INTO families (name, address, phone, active) VALUES ('Martinez', '2756 N. Troy ', '773-396-3956','true');
INSERT INTO families (name, address, phone, active) VALUES ('Padilla', '2756 N. Troy ', '773-565-7656','true');
INSERT INTO families (name, address, phone, active) VALUES ('Medina', '2756 N. Troy ', '773-897-8976','true');
INSERT INTO families (name, address, phone, active) VALUES ('Rivera', '2756 N. George ', '773-898-8778','true');
INSERT INTO families (name, address, phone, active) VALUES ('Smith', '2756 N. Elmer ', '773-396-3956','true');
INSERT INTO families (name, address, phone, active) VALUES ('Gonzalez', '2756 N. Melvina ', '773-376-7656','true');
INSERT INTO families (name, address, phone, active) VALUES ('Romero', '2756 N. Nena ', '773-398-7806','true');

INSERT INTO registrations (date, family_id, active) VALUES ('4-23-18', 1, 'true');
INSERT INTO registrations (date, family_id, active) VALUES ('1-23-18', 3, 'true');
INSERT INTO registrations (date, family_id, active) VALUES ('3-23-16', 2, 'false');
INSERT INTO registrations (date, family_id, active) VALUES ('8-05-15', 4, 'false');
INSERT INTO registrations (date, family_id, active) VALUES ('9-09-18', 1, 'true');
INSERT INTO registrations (date, family_id, active) VALUES ('5-15-12', 6, 'false');
INSERT INTO registrations (date, family_id, active) VALUES ('6-19-17', 2, 'true');
-
INSERT INTO volunteers (name, address, phone, route) VALUES ('Noemi Martinez', '2756 N. Troy', '773-396-3956','#1');
INSERT INTO volunteers (name, address, phone, route) VALUES ('Rene Padilla', '2756 N. Troy', '773-565-7656','#2');
INSERT INTO volunteers (name, address, phone, route) VALUES ('Alex Medina', '2756 N. Troy', '773-897-8976','#3');
INSERT INTO volunteers (name, address, phone, route) VALUES ('Leo Rivera', '2756 N. George', '773-898-8778','#4');
INSERT INTO volunteers (name, address, phone, route) VALUES ('Julio Martinez', '2756 N. Elmer', '773-396-3956','#5');
INSERT INTO volunteers (name, address, phone, route) VALUES ('Adrian Gonzalez', '2756 N. Melvina', '773-376-7656','#6');
INSERT INTO volunteers (name, address, phone, route) VALUES ('Lizbeth Romero', '2756 N. Nena', '773-398-7806','#1');


INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('12-02-17', 'Open house', '100 families', 1, 1);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('12-09-17', 'Open house', '100 families', 3, 1);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('12-16-17', 'Open house', '100 families', 2, 6);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('12-23-17', 'Open house', '100 families', 4, 2);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('1-06-18', 'Christmas Baskets', '100 families', 5, 3);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('5-15-12', 'Christmas Baskets', '100 families', 2, 4);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('6-19-17', 'Christmas Baskets', '100 families', 1, 5);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('4-23-18', 'Open house', '100 families', 1, 1);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('1-23-18', 'Open house', '100 families', 3, 1);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('3-23-16', 'Open house', '100 families', 2, 6);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('8-05-15', 'Open house', '100 families', 4, 2);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('9-09-18', 'Christmas Baskets', '100 families', 5, 3);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('5-15-12', 'Christmas Baskets', '100 families', 2, 4);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('6-19-17', 'Christmas Baskets', '100 families', 1, 5);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('4-23-18', 'Open house', '100 families', 1, 1);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('1-23-18', 'Open house', '100 families', 3, 1);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('3-23-16', 'Open house', '100 families', 2, 6);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('8-05-15', 'Open house', '100 families', 4, 2);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('9-09-18', 'Christmas Baskets', '100 families', 5, 3);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('5-15-12', 'Christmas Baskets', '100 families', 2, 4);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('6-19-17', 'Christmas Baskets', '100 families', 1, 5);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('6-19-17', 'Christmas Baskets', '100 families', 1, 5);
INSERT INTO schedules (date, title, note, volunteer_id, family_id) VALUES ('6-19-17', 'Christmas Baskets', '100 families', 1, 5);




INSERT INTO shifts (title, volunteer_id, schedule_id) VALUES ('Open house', 1, 3);
INSERT INTO shifts (title, volunteer_id, schedule_id) VALUES ('Christmas', 1, 3);
INSERT INTO shifts (title, volunteer_id, schedule_id) VALUES ('Open house', 1, 3);
INSERT INTO shifts (title, volunteer_id, schedule_id) VALUES ('Christmas', 1, 3);
INSERT INTO shifts (title, volunteer_id, schedule_id) VALUES ('Open house', 1, 3);
INSERT INTO shifts (title, volunteer_id, schedule_id) VALUES ('Christmas', 1, 3);
INSERT INTO shifts (title, volunteer_id, schedule_id) VALUES ('Open house', 1, 3);

INSERT INTO pickups (date, family_id, schedule_id, checkIn) VALUES ('6-19-17', 2, 1, false);
INSERT INTO pickups (date, family_id, schedule_id, checkIn) VALUES ('3-19-15', 1, 3, false);
INSERT INTO pickups (date, family_id, schedule_id, checkIn) VALUES ('4-19-18', 2, 1, false);
INSERT INTO pickups (date, family_id, schedule_id, checkIn) VALUES ('4-19-16', 4, 4, false);
INSERT INTO pickups (date, family_id, schedule_id, checkIn) VALUES ('7-19-17', 3, 1, false);
INSERT INTO pickups (date, family_id, schedule_id, checkIn) VALUES ('5-19-18', 2, 4, false);
INSERT INTO pickups (date, family_id, schedule_id, checkIn) VALUES ('6-09-15', 1, 2, false); 



