-- CREATE TABLE Employees (
    -- E_id INT PRIMARY KEY,
    -- name VARCHAR(100),
    -- salary DECIMAL(10, 2)
-- );



-- INSERT INTO Employees (E_id, name, salary) VALUES (1, 'Ali', 10000.00);
-- INSERT INTO Employees (E_id, name, salary) VALUES (2, 'Bob', 4500.00);
-- INSERT INTO Employees (E_id, name, salary) VALUES (3, 'Carol', 5500.00);
-- INSERT INTO Employees (E_id, name, salary) VALUES (4, 'David', 6000.00);
-- INSERT INTO Employees (E_id, name, salary) VALUES (5, 'Eva', 4800.00);





-- BEGIN
    -- UPDATE Employees
    -- SET salary = salary + 500
    -- WHERE salary < 5000;

    -- dbms_output.put_line('Rows updated: ' || SQL%ROWCOUNT);
-- END;





-- DECLARE 
-- v_name Employees.name%TYPE ;
-- v_salary Employees.salary%TYPE ;

-- BEGIN
    -- SELECT name,salary INTO v_name , v_salary FROM Employees
	-- WHERE E_id = 2 ;

    -- dbms_output.put_line('Name ' || v_name || 'salary : ' || v_salary);
-- END;
	
	
	
	
-- BEGIN
    -- UPDATE Employees
    -- SET salary = salary + 300
    -- WHERE E_id = 3;
	-- IF SQL%FOUND THEN 

    -- dbms_output.put_line('Rows updated ');
	-- ELSE
    -- dbms_output.put_line('Rows NOT FOUND ');
	-- END IF ;
	
-- END;


-- DECLARE 
-- v_name Employees.name%TYPE ;
-- v_salary Employees.salary%TYPE ;

-- BEGIN
    -- SELECT name,salary INTO v_name , v_salary FROM Employees
	-- WHERE E_id = 1 ;

    -- dbms_output.put_line('Name :  ' || v_name || ' , salary : ' || v_salary);
	-- EXCEPTION 
	-- WHEN NO_DATA_FOUND THEN
	-- dbms_output.put_line('Employee not found');
-- END;


BEGIN


  DELETE FROM Employees

  WHERE E_ID = 100;


  IF SQL%NOTFOUND THEN

    DBMS_OUTPUT.PUT_LINE('No employee found with E_ID = 100.');

  ELSE

    DBMS_OUTPUT.PUT_LINE('Employee with E_ID = 100 deleted successfully.');

  END IF;

END;



