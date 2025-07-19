



-- DECLARE

-- v_eid Employees.E_id%TYPE;

-- v_name Employees.name%TYPE;

-- v_salary Employees.salary%TYPE;

-- CURSOR c_employee IS

-- SELECT e_id, name, salary FROM Employees;

-- BEGIN

-- OPEN c_employee;

-- LOOP

-- FETCH c_employee INTO v_eid, v_name, v_salary;

-- EXIT WHEN c_employee%NOTFOUND;

-- DBMS_OUTPUT.PUT_LINE('ID: ' || v_eid || ', Name: ' || v_name || ', Salary: ' || v_salary);

-- END LOOP;

-- DBMS_OUTPUT.PUT_LINE('Total rows fetched: ' || c_employee%ROWCOUNT);

-- CLOSE c_employee;

-- END;

-- /





DECLARE

  CURSOR emp_cursor IS

    SELECT E_ID, SALARY FROM Employees;

  v_E_ID     Employees.E_ID%TYPE;

  v_SALARY   Employees.SALARY%TYPE;

BEGIN


  OPEN emp_cursor;

  LOOP


    FETCH emp_cursor INTO v_E_ID, v_SALARY;



    EXIT WHEN emp_cursor%NOTFOUND;



    IF v_SALARY < 7000 THEN



      UPDATE Employees

      SET salary = salary + 500

      WHERE E_ID = v_E_ID;

      DBMS_OUTPUT.PUT_LINE('Salary updated for Employee ID: ' || v_E_ID);

    ELSE

      DBMS_OUTPUT.PUT_LINE('No update needed for Employee ID: ' || v_E_ID || ' (Salary: ' || v_SALARY || ')');

    END IF;

  END LOOP;


  CLOSE emp_cursor;

END;

/