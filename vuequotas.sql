--QUESTION 1 
CREATE TABLE EMP (
    EMPNO NUMERIC(4) GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1),
    ENAME VARCHAR2(10),
    JOB VARCHAR2(9),
    MGR NUMERIC(4),
    HIREDATE DATE,
    SAL NUMERIC(7,2),
    COMM NUMERIC(7,2),
    DEPTNO NUMERIC(2),
    CONSTRAINT EMP_PK PRIMARY KEY(EMPNO),
    CONSTRAINT EMP_DEPT_FK FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO)
    );
    
CREATE TABLE DEPT(
    DEPTNO NUMERIC(2),
    DNAME VARCHAR2(14),
    LOC VARCHAR2(13),
    CONSTRAINT DEPT_PK PRIMARY KEY(DEPTNO)
    );
    
    
--QUESTION 2

CREATE OR REPLACE VIEW EMP2 AS
    SELECT * FROM EMP
    WITH READ ONLY;
    
    
--QUESTION 3

        /*Cette question est un peu ambigüe car je ne connais 
        pas les employés qui ont un petit salaire.
            Mais pour vous montrer le principe, je vais 
        considérér qu'un petit salire est un salaire inférieur
        1000
        */
        
DECLARE
    
    CURSOR SELECTION1 IS
        SELECT EMPNO, ENAME, SAL
        FROM EMP;
        
    CURSOR SELECTION2 IS 
        SELECT EMPNO, SAL
        FROM EMP
        WHERE SAL < 1000;
        
    CURSOR SELECTION3 IS
        SELECT EMPNO, SAL
        FROM EMP
        WHERE SAL >= 1000;
        
    numEmp EMP.EMPNO%TYPE;
    nomEmp EMP.ENAME%TYPE;
    salaire EMP.SAL%TYPE;
    
BEGIN
    
    OPEN SELECTION1;
    
    DBMS_OUTPUT.PUT_LINE("====================================================================");
    DBMS_OUTPUT.PUT_LINE("         LISTE ET SALAIRE DES EMPLOYES AVANT L'AUGMENTATION");
    DBMS_OUTPUT.PUT_LINE("====================================================================");
    DBMS_OUTPUT.PUT_LINE(" ");
    
    LOOP 
        FETCH SELECTION1 INTO numEmp, nomEmp, salaire;
        EXIT WHEN SELECTION%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE("NUMERO : " || numEmp);
        DBMS_OUTPUT.PUT_LINE("NOMS : " + nomEmp);
        DBMS_OUTPUT.PUT_LINE("SALAIRE : " + salaire);
        DBMS_OUTPUT.PUT_LINE("--------------------------------------------------------");
    END LOOP;
    CLOSE SELECTION1;
    
    OPEN SELECTION2;
    
    LOOP
        FETCH SELECTION2 INTO numEmp, salaire;
        EXIT WHEN SELECTION2%NOTFOUND;
        salaire := salaire + (salaire * 4 / 100);
        UPDATE EMP SET SAL = salaire WHERE EMPNO = numEmp;
    END LOOP;
    CLOSE SELECTION2;
    
    OPEN SELECTION3;
    
    LOOP
        FETCH SELECTION3 INTO numEmp, salaire;
        EXIT WHEN SELECTION3%NOTFOUND;
        salaire := salaire + (salaire * 6 / 100);
        UPDATE EMP SET SAL = salaire WHERE EMPNO = numEmp;
    END LOOP;
    CLOSE SELECTION3;
    
    
    DBMS_OUTPUT.PUT_LINE(" ");
    DBMS_OUTPUT.PUT_LINE(" ");
    DBMS_OUTPUT.PUT_LINE("====================================================================");
    DBMS_OUTPUT.PUT_LINE("         LISTE ET SALAIRE DES EMPLOYES APRES L'AUGMENTATION");
    DBMS_OUTPUT.PUT_LINE("====================================================================");
    DBMS_OUTPUT.PUT_LINE(" ");
    
    LOOP 
        FETCH SELECTION1 INTO numEmp, nomEmp, salaire;
        EXIT WHEN SELECTION%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE("NUMERO : " || numEmp);
        DBMS_OUTPUT.PUT_LINE("NOMS : " + nomEmp);
        DBMS_OUTPUT.PUT_LINE("SALAIRE : " + salaire);
        DBMS_OUTPUT.PUT_LINE("--------------------------------------------------------");
    END LOOP;
    CLOSE SELECTION1;

END;
/
        
        
    
    