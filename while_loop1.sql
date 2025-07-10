

DECLARE
    i   NUMBER := 1;
    num NUMBER := &num;
BEGIN
    WHILE i < num LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 2;
    END LOOP;
END;