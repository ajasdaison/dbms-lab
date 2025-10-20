DECLARE
    N            NUMBER;
    M            NUMBER;
    DIGIT        NUMBER;
    SUM_POW      NUMBER := 0;
    COUNT_DIGITS NUMBER := 0;
    TEMP         NUMBER;
BEGIN
    N := &N;
    M := N;
    TEMP := N;
    WHILE TEMP > 0 LOOP
        TEMP := TRUNC(TEMP / 10);
        COUNT_DIGITS := COUNT_DIGITS + 1;
    END LOOP;

    WHILE M > 0 LOOP
        DIGIT := MOD(M, 10);
        SUM_POW := SUM_POW + POWER(DIGIT, COUNT_DIGITS);
        M := TRUNC(M / 10);
    END LOOP;

    IF SUM_POW = N THEN
        DBMS_OUTPUT.PUT_LINE(N || ' IS AN ARMSTRONG NUMBER!');
    ELSE
        DBMS_OUTPUT.PUT_LINE(N || ' IS NOT AN ARMSTRONG NUMBER!');
    END IF;

    DBMS_OUTPUT.PUT_LINE('SUM OF POWERED DIGITS: ' || SUM_POW);
END;