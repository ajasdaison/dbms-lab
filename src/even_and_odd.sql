CREATE TABLE EVEN (
    NUM NUMBER(6)
);

CREATE TABLE ODD (
    NUM NUMBER(6)
);

DECLARE BEGIN
    FOR I IN 1..30 LOOP
        IF ( I MOD 2 = 0 ) THEN
            INSERT INTO EVEN VALUES ( I );

        ELSE
            INSERT INTO ODD VALUES ( I );

        END IF;
    END LOOP;
END;
/

SELECT
    *
FROM
    EVEN;

SELECT
    *
FROM
    ODD;