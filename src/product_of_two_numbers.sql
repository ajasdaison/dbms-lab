DECLARE
    A NUMBER;
    B NUMBER;
    C NUMBER;
BEGIN
    A := &A;
    B := &B;
    C := A * B;
    DBMS_OUTPUT.PUT_LINE('PRODUCT = ' || C);
END;