SET SCHEMA MOVIES;

-- 
SELECT ADDRESS
FROM STUDIO
WHERE NAME='MGM';

--
SELECT BIRTHDATE
FROM MOVIESTAR
WHERE NAME='Sandra Bullock';

--
SELECT STARNAME
FROM STARSIN
WHERE MOVIEYEAR=1980 AND MOVIETITLE LIKE '%Love%';

-- 
SELECT NAME
FROM MOVIEEXEC
WHERE NETWORTH > 10000000;

--
SELECT NAME
FROM MOVIESTAR
WHERE GENDER='M' or ADDRESS LIKE '%Malibu%';

--
SET SCHEMA PC;

--
SELECT MODEL, SPEED AS MHZ, HD AS GB
  FROM PC
  WHERE PRICE < 1200;

--
SELECT DISTINCT MAKER
  FROM PRODUCT
  WHERE TYPE = 'Printer';

--
SELECT MODEL, RAM, SCREEN
  FROM LAPTOP
  WHERE PRICE > 1000;

--
SELECT *
  FROM PRINTER
  WHERE COLOR = 'y';

-- 
SELECT MODEL, SPEED, HD
  FROM PC
  WHERE (CD = '12x' OR CD = '16x') AND PRICE < 2000;

--
SET SCHEMA SHIPS;

--
SELECT CLASS, COUNTRY
  FROM CLASSES
  WHERE NUMGUNS < 10;

--
SELECT NAME AS SHIPNAME
  FROM SHIPS
  WHERE LAUNCHED < 1918;

--
SELECT SHIP, BATTLE
  FROM OUTCOMES
  WHERE RESULT = 'sunk';

--
SELECT NAME
  FROM SHIPS
  WHERE NAME = CLASS;

--
SELECT NAME
  FROM SHIPS
  WHERE NAME LIKE 'R%';

--
SELECT NAME
  FROM SHIPS
  WHERE NAME LIKE '% %' AND NAME NOT LIKE '% % %'