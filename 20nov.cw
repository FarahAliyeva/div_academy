-- TASK 1
CREATE TABLE LAYIHELER (
    LAYIHE_ID   NUMBER(4) PRIMARY KEY,
    LAYIHE_CODU CHAR(6),
    LAYIHE_ADI  VARCHAR2(50),
    BUDCE       NUMBER(8, 2)
);






-- TASK 2
INSERT INTO LAYIHELER 
VALUES (1, 'PRJ001', 'YENI', 123456.789);

SELECT *
FROM LAYIHELER;





CREATE TABLE sobeler (
    sobe_id   number(5, 2) PRIMARY KEY,
    sobe_adi  char(30)
);
 

CREATE TABLE isciler (
    isci_id  NUMBER PRIMARY KEY,  -- 1) 
    ad       VARCHAR2(30),
    sobe_id  NUMBER
);

INSERT INTO sobeler VALUES (10, 'IT');
INSERT INTO sobeler VALUES (20, 'HR');
INSERT INTO sobeler VALUES (30, 'Finance');

INSERT INTO isciler VALUES (1, 'Aysel', 10);
INSERT INTO isciler VALUES (2, 'Murad', 20);
INSERT INTO isciler VALUES (3, 'Nigar', 20);
INSERT INTO isciler VALUES (4, 'Leyla', NULL);  


-- EXISTS;






-- TASK 3 
SELECT LENGTH(sobe_adi) AS SIMVOL_SAYI,
       VSIZE(sobe_adi)  AS BAYT_OLCUSU
FROM sobeler
WHERE sobe_adi = 'IT';






-- TASK 4 
SELECT ad
FROM isciler
WHERE sobe_id IS NULL;







-- TASK 5 
SELECT S.sobe_adi
FROM sobeler S 
WHERE EXISTS (SELECT 1
              FROM isciler I 
              WHERE I.sobe_id = S.sobe_id
);






-- TASK 6 
SELECT sobe_id 
FROM sobeler
WHERE sobe_id NOT IN  (SELECT sobe_id
                       FROM isciler
);--- DOESNT WORK

SELECT S.sobe_adi
FROM sobeler S 
WHERE NOT EXISTS (SELECT 1
              FROM isciler I 
              WHERE I.sobe_id = S.sobe_id
);






-- TASK 7 






