CREATE DATABASE TOYSGROUP;
USE TOYSGROUP;

CREATE TABLE CATEGORYPRODUCT (
ProductCategoryKey INT NOT NULL
, ProductKey INT NOT NULL
, CategoryName VARCHAR(45)
, CONSTRAINT PK_CATEGORYPRODUCT PRIMARY KEY (ProductCategoryKey));

CREATE TABLE PRODUCT (
ProductKey INT NOT NULL
, ProductCategoryKey INT NOT NULL
, ProductName VARCHAR(45) NOT NULL
, StandardCost DECIMAL(6,2)
, CONSTRAINT PK_PRODOTTO PRIMARY KEY (ProductKey)
, FOREIGN KEY (ProductCategoryKey) REFERENCES CATEGORYPRODUCT (ProductCategoryKey));

CREATE TABLE SALES (
SalesId INT NOT NULL
, ProductKey INT NOT NULL
, RegionId INT NOT NULL
, OrderDate DATE
, OrderQuantity INT
, SalesAmount DECIMAL(6,2)
, CONSTRAINT PK_SALES PRIMARY KEY (SalesId)
, FOREIGN KEY (ProductKey) REFERENCES PRODUCT (ProductKey));

CREATE TABLE REGION (
RegionId INT NOT NULL
, StateId INT NOT NULL
, RegionName VARCHAR(45)
, CONSTRAINT PK_REGION PRIMARY KEY (RegionId));

CREATE TABLE STATE (
StateId INT NOT NULL
, RegionId INT NOT NULL
, SalesId INT NOT NULL
, StateName VARCHAR(45)
, CONSTRAINT PK_STATE PRIMARY KEY (StateId)
, FOREIGN KEY (RegionId) REFERENCES REGION (RegionId)
, FOREIGN KEY (SalesId) REFERENCES SALES (SalesId));

ALTER TABLE CATEGORYPRODUCT
DROP COLUMN ProductKey;

INSERT INTO CATEGORYPRODUCT VALUES
(1, 'Peluche')
, (2, 'Giochi Educativi')
, (3, 'Costruzioni')
, (4, 'Giocattoli da Esterno')
, (5, 'Giochi da Tavolo')
, (6, 'Veicoli')
, (7, 'Bambole')
, (8, 'Giochi Musicali')
, (9, 'Articoli Creativi')
, (10, 'Accessori')
, (11, 'Giochi per Neonati')
, (12, 'Giochi di Ruolo')
, (13, 'Puzzle')
, (14, 'Giocattoli in Legno')
, (15, 'Robot e Droni')
, (16, 'Action Figures')
, (17, 'Kit di Scienza')
, (18, 'Sport e Attività')
, (19, 'Caccia al Tesoro')
, (20, 'Giochi da Giardino');

INSERT INTO PRODUCT VALUES
(1, 1, 'Orsetto di Peluche', '15.00')
, (2, 1, 'Coniglio di Peluche', '12.50')
, (3, 2, 'Gioco di Matematica', '20.00')
, (4, 2, 'Puzzle Alfabetico', '18.00')
, (5, 3, 'Set di Costruzione', '25.00')
, (6, 3, 'Blocchi Magnetici', '22.00')
, (7, 4, 'Palla da Spiaggia', '10.00')
, (8, 4, 'Giocattolo da Giardino', '30.00')
, (9, 5, 'Gioco da Tavolo Strategico', '35.00')
, (10, 5, 'Gioco di Carte', '15.00')
, (11, 6, 'Macchinina R/C', '40.00')
, (12, 6, 'Treno Elettrico', '50.00')
, (13, 7, 'Bambola di Pezza', '20.00')
, (14, 7, 'Bambola Interattiva', '30.00')
, (15, 8, 'Tastiera Musicale', '25.00')
, (16, 8, 'Strumenti Musicali', '20.00')
, (17, 9, 'Kit per Disegnare', '15.00')
, (18, 9, 'Kit di Costruzione Creativa', '28.00')
, (19, 10, 'Set di Accessori per Giochi', '12.00')
, (20, 10, 'Porta Giochi', '8.00');

INSERT INTO REGION VALUES
(1, 1, 'Nord America')
, (2, 2, 'Sud America')
, (3, 3, 'Nord Europa')
, (4, 4, 'Sud Europa')
, (5, 5, 'Asia')
, (6, 6, 'Africa')
, (7, 7, 'Oceania');

INSERT INTO STATE VALUES
(1, 1, 3, 'Stati Uniti')
, (2, 1, 5, 'Canada')
, (3, 2, 11, 'Brasile')
, (4, 2, 8, 'Argentina')
, (5, 3, 2, 'Germania')
, (6, 3, 7, 'Svezia')
, (7, 4, 13, 'Italia')
, (8, 4, 9, 'Spagna')
, (9, 5, 1, 'Cina')
, (10, 5, 10, 'Giappone')
, (11, 6, 4, 'Sudafrica')
, (12, 6, 12, 'Nigeria')
, (13, 7, 6, 'Australia')
, (14, 7, 14, 'Nuova Zelanda');

INSERT INTO SALES VALUES
(1, 1, 1, '2021-01-15', 10, '150.00')
, (2, 2, 1, '2021-05-16', 5, '62.50')
, (3, 3, 2, '2022-03-17', 7, '140.00')
, (4, 4, 2, '2022-07-18', 12, '216.00')
, (5, 5, 3, '2023-01-19', 3, '75.00')
, (6, 6, 3, '2023-08-20', 6, '132.00')
, (7, 7, 4, '2024-02-21', 9, '180.00')
, (8, 8, 4, '2021-11-22', 4, '120.00')
, (9, 9, 5, '2022-05-23', 8, '280.00')
, (10, 10, 5, '2022-12-24', 5, '75.00')
, (11, 11, 6, '2023-03-25', 15, '600.00')
, (12, 12, 6, '2024-01-26', 10, '500.00')
, (13, 13, 7, '2024-04-27', 20, '400.00')
, (14, 14, 7, '2021-09-28', 3, '90.00')
, (15, 15, 1, '2023-02-05', 5, '125.00')
, (16, 16, 2, '2023-06-30', 6, '180.00')
, (17, 17, 3, '2024-08-01', 4, '60.00')
, (18, 18, 4, '2021-10-02', 8, '224.00')
, (19, 19, 5, '2022-04-03', 7, '84.00')
, (20, 20, 6, '2024-03-04', 11, '88.00');

SELECT *
FROM CATEGORYPRODUCT;

SELECT *
FROM PRODUCT;

SELECT *
FROM REGION;

SELECT *
FROM STATE;

SELECT *
FROM SALES;

SELECT ProductCategoryKey, COUNT(*) 
FROM CATEGORYPRODUCT
GROUP BY ProductCategoryKey
HAVING COUNT(*) >1;

SELECT ProductKey, COUNT(*)
FROM PRODUCT
GROUP BY ProductKey
HAVING COUNT(*)>1;

SELECT SalesId, COUNT(*)
FROM SALES
GROUP BY SalesId
HAVING COUNT(*)>1;

SELECT RegionId, COUNT(*)
FROM REGION
GROUP BY RegionId
HAVING COUNT(*)>1;

SELECT StateId, COUNT(*)
FROM STATE
GROUP BY StateId
HAVING COUNT(*)>1;

SELECT s.SalesId, s.OrderDate, p.ProductName, c.CategoryName, st.StateName, r.RegionName
       ,CASE WHEN DATEDIFF(CURRENT_DATE, s.OrderDate) > 180 THEN 'TRUE'
	   ELSE 'FALSE'
       END AS 'Morethan180days'
FROM SALES AS s
INNER JOIN PRODUCT AS p
ON s.ProductKey=p.ProductKey
INNER JOIN CATEGORYPRODUCT AS c
ON c.ProductCategoryKey=p.ProductCategoryKey
INNER JOIN STATE AS st
ON st.SalesId=s.SalesId
INNER JOIN REGION AS r
ON r.RegionId=st.RegionId;

SELECT p.ProductKey, SUM(s.OrderQuantity) AS TotalSold
FROM PRODUCT AS p
JOIN SALES AS s
ON p.ProductKey=s.ProductKey
WHERE s.OrderDate >= DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR)
GROUP BY p.ProductKey
HAVING SUM(s.OrderQuantity) > (SELECT AVG(s.SalesAmount)
                               FROM (SELECT SUM(s.OrderQuantity)
                                     FROM SALES
									 WHERE s.OrderDate >= DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR)
                                     GROUP BY p.ProductKey) AS VenditeTotali);
                                     
SELECT p.ProductKey, p.ProductName, YEAR(s.OrderDate) AS AnnoVendita, SUM(s.SalesAmount*s.OrderQuantity) AS Fatturato
FROM PRODUCT AS p
INNER JOIN SALES AS s
ON p.ProductKey=s.ProductKey
GROUP BY p.ProductKey, YEAR(s.OrderDate);

SELECT st.StateName, YEAR(s.OrderDate) AS AnnoVendita,  SUM(s.SalesAmount*s.OrderQuantity) AS Fatturato
FROM SALES AS s
INNER JOIN STATE AS st
ON s.SalesId=st.SalesId
GROUP BY st.StateId, YEAR(s.OrderDate)
ORDER BY YEAR(s.OrderDate) DESC, Fatturato DESC;

SELECT c.CategoryName, SUM(s.OrderQuantity) AS TotaleVendite
FROM SALES AS s
JOIN PRODUCT AS p
ON p.ProductKey=s.ProductKey
JOIN CATEGORYPRODUCT AS c
ON c.ProductCategoryKey=p.ProductCategoryKey
GROUP BY CategoryName
ORDER BY TotaleVendite DESC
LIMIT 1;

-- APPROCCIO 1
SELECT ProductKey, ProductName
FROM PRODUCT AS p
WHERE NOT EXISTS (SELECT 1
                  FROM SALES AS s
                  WHERE s.ProductKey=p.ProductKey);

-- APPROCCIO 2
SELECT p.ProductKey, p.ProductName
FROM PRODUCT AS p
LEFT JOIN SALES AS s
ON s.ProductKey=p.ProductKey
WHERE s.ProductKey IS NULL;

CREATE VIEW DM_VW_VistaProdotti AS (SELECT p.ProductKey, p.ProductName, c.CategoryName
                                    FROM PRODUCT AS p
                                    JOIN CATEGORYPRODUCT AS c
                                    ON p.ProductCategoryKey=c.ProductCategoryKey);
								
CREATE VIEW DM_VW_VistaGeografica AS (SELECT st.StateName, r.RegionName, SUM(s.SalesAmount) AS Fatturato
                                      FROM STATE AS st
                                      JOIN REGION AS r
                                      ON r.RegionId=st.RegionId
                                      JOIN SALES AS s
                                      ON s.RegionId=r.RegionId
                                      GROUP BY st.StateName, r.RegionName
                                      ORDER BY Fatturato DESC);

