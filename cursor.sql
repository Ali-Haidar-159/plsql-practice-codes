
-- CREATE TABLE employees (
    -- E_ID NUMBER PRIMARY KEY,
    -- Name VARCHAR2(50),
    -- salary NUMBER(10, 2)
-- );

-- INSERT INTO employees (E_ID, Name, salary) VALUES (1, 'Alice', 10000.00);
-- INSERT INTO employees (E_ID, Name, salary) VALUES (2, 'Bob', 4500.00);
-- INSERT INTO employees (E_ID, Name, salary) VALUES (3, 'Carol', 5500.00);
-- INSERT INTO employees (E_ID, Name, salary) VALUES (4, 'David', 6000.00);
-- INSERT INTO employees (E_ID, Name, salary) VALUES (5, 'Eva', 4800.00);

-- BEGIN
    -- UPDATE employees
    -- SET salary = salary + 500
    -- WHERE salary < 5000;

    -- DBMS_OUTPUT.PUT_LINE('Rows updated: ' || SQL%ROWCOUNT);
-- END;


DECLARE 
v_name employees.Name%TYPE ;
v_salary employees.salary%TYPE ;
BEGIN
SELECT Name , salary INTO v_name , v_salary
FROM employees
WHERE E_ID=2 ;

    DBMS_OUTPUT.PUT_LINE('Rows updated: ' || SQL%ROWCOUNT);

END ;

