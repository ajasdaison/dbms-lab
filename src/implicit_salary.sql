CREATE TABLE INCOME (
    ENAME  CHAR(10),
    SALARY NUMBER(5)
);

INSERT INTO INCOME VALUES ( 'SINDHU',
                            10000 );

INSERT INTO INCOME VALUES ( 'INDHU',
                            18000 );

SELECT
    *
FROM
    INCOME;

DECLARE
    ENAME INCOME.SALARY%TYPE;
    SAL   INCOME.SALARY%TYPE;
BEGIN
    SELECT
        SALARY
    INTO SAL
    FROM
        INCOME
    WHERE
        ENAME = 'SINDHU';

    IF SAL > 10000 THEN
        SAL := SAL + SAL * 0.3;
    ELSIF SAL > 8000 THEN
        SAL := SAL + SAL * 0.2;
    ELSE
        SAL := SAL + SAL * 0.1;
    END IF;

    UPDATE INCOME
    SET
        SALARY = SAL
    WHERE
        ENAME = 'SINDHU';

END;
/

SELECT
    *
FROM
    INCOME;