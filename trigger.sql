CREATE Table my_user(
    user_name VARCHAR(50),
    user_email VARCHAR(100)
)

insert into my_user VALUES
('jakir', 'jakir@gmail.com'),
('mizba', 'mizba@gmail.com')

SELECT * FROM my_user;

--how to trigger and set deleted user store this table

create Table delete_user_audit(
    delete_user_name VARCHAR(50),
    deletedAt TIMESTAMP
);
SELECT * FROM delete_user_audit;
--trigger FUNCTION
CREATE or REPLACE FUNCTION  save_user_deleted()
RETURNS TRIGGER
LANGUAGE plpgsql
as 
$$
    BEGIN
        INSERT INTO delete_user_audit VALUES(OLD.user_name, now());
        RAISE NOTICE 'Deleted user audit log created';
        RETURN OLD;
    END
$$;

-- how to create trigger

CREATE or REPLACE Trigger save_deleted_user_trigger
BEFORE DELETE
on my_user
for EACH row
EXECUTE FUNCTION save_user_deleted();

DELETE FROM my_user WHERE user_name = 'jakir';