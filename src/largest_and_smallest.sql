DECLARE
    A     NUMBER;
    B     NUMBER;
    C     NUMBER;
    BIG   NUMBER;
    SMALL NUMBER;
BEGIN
    A := &A;
    B := &B;
    C := &C;
    IF
        A > B
        AND A > C
    THEN
        BIG := A;
    ELSIF B > C THEN
        BIG := B;
    ELSE
        BIG := C;
    END IF;

    DBMS_OUTPUT.PUT_LINE('LARGEST IS ' || BIG);
    IF
        A < B
        AND A < C
    THEN
        SMALL := A;
    ELSIF B < C THEN
        SMALL := B;
    ELSE
        SMALL := C;
    END IF;

    DBMS_OUTPUT.PUT_LINE('SMALLEST IS ' || SMALL);
END;