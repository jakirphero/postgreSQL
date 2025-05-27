-- Active: 1747407712104@@127.0.0.1@5432@test@public
SELECT * FROM doctor

-- how to add colum in spl

ALTER TABLE doctor 
ADD COLUMN address  DEFAULT 'noakhali, companigonj' NOT NULL;

-- how to delete table colum
ALTER TABLE doctor
DROP COLUMN email;

-- hot to rename in table column

ALTER TABLE doctor
RENAME COLUMN id to user_id;

-- how to type change 
ALTER TABLE doctor
ALTER COLUMN contact type VARCHAR (50);

-- how to add constent in column
ALTER TABLE doctor
ALTER COLUMN contact set NOT NULL;

-- how to drop in COLUMN CONTAINS
ALTER TABLE doctor
ALTER COLUMN contact DROP NOT NULL;
-- new data insert 

-- how to UNIQUE in column CONTAINS
ALTER TABLE doctor
ADD constraint unique_doctor_contact UNIQUE(contact);

-- how to delete UNIQUE key 
ALTER TABLE doctor
DROP constraint unique_doctor_contact;
INSERT INTO doctor VALUES(6, 'jakir', 'dhone', 'jakiflj@gmail.com', 'dhakha, golsan')

-- i went delete my table data recod 
TRUNCATE Table doctor;

-- delete my table 
DROP Table doctor;
