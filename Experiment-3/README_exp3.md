# Experiment – 3: PL/SQL Basic Block

**Student Name:** Bhavya  
**UID:** 24BAI70791  
**Branch:** CSE(AI & ML)  
**Section/Group:** 24AIT_KRG-1/G2  
**Semester:** 4   
**Subject Name:** Database Management System  
**Subject Code:** 24CSH-298  

---

## 1. Aim of the Session
To understand the basic structure of a PL/SQL program by creating and executing a simple PL/SQL block that includes Declaration and Execution sections and to display output using built-in procedures.

---

## 2. Software Requirements
- Database Management System: Oracle Database  
- Database Administration Tool: Oracle SQL Developer  

---

## 3. Objectives
- To learn the structure of a PL/SQL block.  
- To use the DECLARE section for variable declaration.  
- To use the BEGIN…END block for execution.  
- To display output using DBMS_OUTPUT.PUT_LINE.  

---

## 4. Procedure of the Experiment
1. Open Oracle SQL Developer and connect to the Oracle database.  
2. Open a new SQL Worksheet.  
3. Enable server output using `SET SERVEROUTPUT ON;`.  
4. Write a PL/SQL program with:  
   - Declaration section for variables  
   - Execution section for calculations and output  
5. Execute the program and observe the results in the output window.  

---

## 5. Practical / Experiment Steps
1. Enable server output: `SET SERVEROUTPUT ON;`  
2. Declare variables: `emp_id`, `emp_name`, `birth_year`, `current_year`, and `age`.  
3. Assign values to the variables.  
4. Calculate age as `age := current_year - birth_year;`.  
5. Display all values using `DBMS_OUTPUT.PUT_LINE`.  
6. End the PL/SQL block using `END;` and execute with `/`.  

---

## 6. Input / Output Details and Screenshot

Program (Input):
<img src="screenshots/query3.1.png" width="700">
Output:
<img src="screenshots/query3.2.png" width="700"> 

---

## 7. Learning Outcome
- Understood the basic structure of a PL/SQL block.  
- Learned how to declare and initialize variables.  
- Learned how to execute statements inside BEGIN…END block.  
- Learned how to display output using DBMS_OUTPUT.PUT_LINE.
