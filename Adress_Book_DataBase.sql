create database AddressBook_Services;
use AddressBook_Services;

CREATE TABLE AddressBook(
FIRST_NAME varchar(20),
LAST_NAME varchar(20),
ADDRESS varchar(100),
CITY varchar(20),
STATE varchar(20),
ZIP int,
PHONE_NUMBER long,
EMAIL varchar(20)
);
insert into AddressBook(FIRST_NAME, LAST_NAME, ADDRESS, CITY, STATE, ZIP, PHONE_NUMBER, EMAIL) values ('Shyam', 'Yadav', 'Velapur', 'Solapur', 'MH', 413304, 7828606108, 'shyam123@gmail.com');

insert into AddressBook(FIRST_NAME, LAST_NAME, ADDRESS, CITY, STATE, ZIP, PHONE_NUMBER, EMAIL) values  ('Sudarshan', 'Gaikwad', 'Pehe', 'Pandharpur', 'MH', 400037, 8308622248, 'sudarshan@gmail.com');

insert into AddressBook(FIRST_NAME, LAST_NAME, ADDRESS, CITY, STATE, ZIP, PHONE_NUMBER, EMAIL) values  ('Akash', 'Rao', '', 'Noida', 'UP', 400037, 98765678998, 'akash34@gmail.com');

 update AddressBook set EMAIL='RaoEmail@gmail.com' where FIRST_NAME='Akash';
 
 delete from AddressBook where FIRST_NAME='Shyam';
 
 select * from AddressBook where CITY='Solapur' OR STATE='MH';
 SELECT COUNT(*) AS City_Count FROM AddressBook WHERE CITY='Pandharpur';
 SELECT COUNT(*) AS State_Count FROM AddressBook WHERE STATE='MH';
 
 SELECT FIRST_NAME, LAST_NAME, ADDRESS, CITY, STATE, ZIP, PHONE_NUMBER, EMAIL
FROM AddressBook
WHERE CITY = 'Pandharpur'
ORDER BY FIRST_NAME, LAST_NAME ASC;

ALTER TABLE AddressBook
ADD COLUMN Type varchar(20);

update AddressBook set type='Family' where FIRST_NAME='Sudarshan' AND FIRST_NAME='Akash';
update AddressBook set type='Friends' where FIRST_NAME='Akas' AND FIRST_NAME='Shyam';
INSERT INTO AddressBook (FIRST_NAME, LAST_NAME, ADDRESS, CITY, STATE, ZIP, PHONE_NUMBER, EMAIL, Type)
VALUES 
('Kamal', 'Hasan', 'main street', 'Jodhppur', 'Rajsthan', 12345, 9876543210, 'kamal@example.com', 'Family'),
('Shruti', 'Hasan', 'Main Street', 'Begampur', 'Bihar', 67890, 1234567890, 'shruti@example.com', 'Friends');

SELECT STATE, COUNT(*) AS contact_count
FROM AddressBook
GROUP BY STATE;

INSERT INTO AddressBook (FIRST_NAME, LAST_NAME, ADDRESS, CITY, STATE, ZIP, PHONE_NUMBER, EMAIL, TYPE)
VALUES ('Akshara', 'Mansoor', 'main street', 'Kolhapur', 'Kerala', 12345, 1234567890, 'akshra@example.com', 'Friend');


INSERT INTO AddressBook (FIRST_NAME, LAST_NAME, ADDRESS, CITY, STATE, ZIP, PHONE_NUMBER, EMAIL, TYPE)
VALUES ('Ravi', 'Shastri', 'Parvati', 'Pune', 'Maharshtra', 1234545, 18744567890, 'ravi12@example.com', 'Family');

 
 
