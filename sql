CREATE DATABASE CLS;

CREATE TABLE PROFILE
(
	USER_ID INT AUTO_INCREMENT PRIMARY KEY,
	USER_NAME VARCHAR(20) NOT NULL UNIQUE,
	PASSWORD VARCHAR(40) NOT NULL,
	EMAIL VARCHAR(40) NOT NULL,
	COL_HS INT,
	FRU_HS INT,
	ANI_HS INT,
	ADD_HS INT,
	SUB_HS INT,
	MUL_HS INT,
	DIV_HS INT,
	TOTAL_HS INT
);

ALTER TABLE PROFILE AUTO_INCREMENT = 10001;

CREATE PROCEDURE total()
BEGIN
SELECT
COL_HS,
FRU_HS,
ANI_HS,
ADD_HS,
SUB_HS,
MUL_HS,
DIV_HS,
(COL_HS+FRU_HS+ANI_HS+ADD_HS+SUB_HS+MUL_HS+DIV_HS) AS TOTAL_HS
FROM profile;
END
CALL `total`();
