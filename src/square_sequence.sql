SET SERVEROUTPUT ON;
ACCEPT N NUMBER PROMPT 'ENTER LIMIT: '

DECLARE
    N NUMBER := &N;
    I NUMBER;
    S NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('SQUARES OF NUMBERS FROM 1 TO '
                         || N
                         || ':');
    FOR I IN 1..N LOOP
        S := I * I;
        DBMS_OUTPUT.PUT_LINE(S);
    END LOOP;

END;