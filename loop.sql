DECLARE
    i  NUMBER := 1;

BEGIN
    LOOP
	EXIT WHEN i>20;
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 2;
    END LOOP;
END;