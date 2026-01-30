SET SERVEROUTPUT ON;

DECLARE
    num NUMBER := -5;
BEGIN
    IF num > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Program 1: The number is Positive');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Program 1: The number is Non-Positive');
    END IF;
END;
/

DECLARE
    marks NUMBER := 78;
BEGIN
    IF marks >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('Program 2: Grade A');
    ELSIF marks >= 75 THEN
        DBMS_OUTPUT.PUT_LINE('Program 2: Grade B');
    ELSIF marks >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('Program 2: Grade C');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Program 2: Fail');
    END IF;
END;
/

DECLARE
    marks NUMBER := 65;
BEGIN
    IF marks >= 85 THEN
        DBMS_OUTPUT.PUT_LINE('Program 3: Performance Excellent');
    ELSIF marks >= 70 THEN
        DBMS_OUTPUT.PUT_LINE('Program 3: Performance Very Good');
    ELSIF marks >= 50 THEN
        DBMS_OUTPUT.PUT_LINE('Program 3: Performance Good');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Program 3: Performance Poor');
    END IF;
END;
/

DECLARE
    day_no NUMBER := 3;
BEGIN
    CASE day_no
        WHEN 1 THEN DBMS_OUTPUT.PUT_LINE('Program 4: Monday');
        WHEN 2 THEN DBMS_OUTPUT.PUT_LINE('Program 4: Tuesday');
        WHEN 3 THEN DBMS_OUTPUT.PUT_LINE('Program 4: Wednesday');
        WHEN 4 THEN DBMS_OUTPUT.PUT_LINE('Program 4: Thursday');
        WHEN 5 THEN DBMS_OUTPUT.PUT_LINE('Program 4: Friday');
        WHEN 6 THEN DBMS_OUTPUT.PUT_LINE('Program 4: Saturday');
        WHEN 7 THEN DBMS_OUTPUT.PUT_LINE('Program 4: Sunday');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Program 4: Invalid Day Number');
    END CASE;
END;
/
