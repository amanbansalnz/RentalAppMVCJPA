--
DROP TABLE TRANSACTIONS IF EXISTS;
DROP TABLE USER IF EXISTS;
DROP TABLE VERIFICATION_TOKEN IF EXISTS;
DROP TABLE CATEGORY_KEYWORD IF EXISTS;
DROP TABLE CATEGORY IF EXISTS;
DROP TABLE CATEGORY_MATCHED IF EXISTS;
DROP TABLE MEMBER_STATEMENT_UPLOAD_SUMMARY IF EXISTS;
DROP TABLE ARCHIVED_TRANSACTIONS IF EXISTS;
--
DROP SEQUENCE SEQ_USER IF EXISTS;
DROP SEQUENCE SEQ_VERIFICATION_TOKEN IF EXISTS;
DROP SEQUENCE SEQ_CATEGORY_MATCHED IF EXISTS;
DROP SEQUENCE SEQ_CATEGORY IF EXISTS;
DROP SEQUENCE SEQ_MEMBER_STATEMENT_UPLOAD_SUMMARY IF EXISTS;
--
CREATE SEQUENCE SEQ_USER START WITH 10 INCREMENT BY 1;
CREATE SEQUENCE SEQ_VERIFICATION_TOKEN START WITH 10 INCREMENT BY 1;
CREATE SEQUENCE SEQ_CATEGORY_MATCHED START WITH 100 INCREMENT BY 1;
CREATE SEQUENCE SEQ_CATEGORY START WITH 100 INCREMENT BY 1;
CREATE SEQUENCE SEQ_MEMBER_STATEMENT_UPLOAD_SUMMARY START WITH 10 INCREMENT BY 1;
--
CREATE TABLE TRANSACTIONS (
MEMBER_ID BIGINT NOT NULL,
REPEAT_TRANSACTION_COUNTER INT NOT NULL,
TYPE VARCHAR(255) NOT NULL,
DESCRIPTION VARCHAR(500),
RECEIVED_ON DATE NOT NULL,
PAID_ON DATE NOT NULL,
AMOUNT NUMERIC(19, 2) NOT NULL,
BALANCE NUMERIC (19, 2),
RAW_DESCRIPTION VARCHAR(1000) NOT NULL,
IDENTIFIER VARCHAR(255) NOT NULL PRIMARY KEY,
TRANSACTION_CODE VARCHAR(255) NOT NULL,
TO_DATE DATE,
FROM_DATE DATE,
UPLOADED_ON TIMESTAMP NOT NULL,
CATEGORY_TYPE VARCHAR(255),
UPLOAD_NUMBER BIGINT,
MEMBER_STATEMENT_UPLOAD_SUMMARY_ID BIGINT,
BANK_NAME VARCHAR(255) NOT NULL,
);

CREATE TABLE USER (
ID BIGINT PRIMARY KEY,
EMAIL VARCHAR(255) NOT NULL UNIQUE,
PASSWORD VARCHAR(255) NOT NULL,
SECRET VARCHAR(255) NOT NULL,
ENABLED BOOLEAN DEFAULT FALSE NOT NULL,
CREATED TIMESTAMP NOT NULL,
ROLE VARCHAR(255) NOT NULL
);

CREATE TABLE VERIFICATION_TOKEN (
ID BIGINT PRIMARY KEY,
TOKEN VARCHAR(255) NOT NULL,
TOKEN_TYPE VARCHAR(255) NOT NULL,
EXPIRY_DATE DATE NOT NULL,
USER_ID INT NOT NULL
);

CREATE TABLE CATEGORY (
ID BIGINT PRIMARY KEY,
CATEGORY VARCHAR(255) NOT NULL
);

CREATE TABLE CATEGORY_KEYWORD (
CATEGORY_ID BIGINT,
KEYWORD VARCHAR(255) NOT NULL,
PRIMARY KEY(CATEGORY_ID, KEYWORD)
);

CREATE TABLE CATEGORY_MATCHED (
ID BIGINT PRIMARY KEY,
CATEGORY VARCHAR(255) NOT NULL,
CATEGORY_DESCRIPTION VARCHAR(255) NOT NULL
);

CREATE TABLE MEMBER_STATEMENT_UPLOAD_SUMMARY (
ID BIGINT PRIMARY KEY,
MEMBER_ID BIGINT NOT NULL,
UPLOADED_ON DATE NOT NULL
);

CREATE TABLE ARCHIVED_TRANSACTIONS (
TYPE VARCHAR(255) NOT NULL,
DESCRIPTION VARCHAR(500),
RECEIVED_ON DATE NOT NULL,
PAID_ON DATE NOT NULL,
AMOUNT NUMERIC(19, 2) NOT NULL,
RAW_DESCRIPTION VARCHAR(1000) NOT NULL,
IDENTIFIER VARCHAR(255) NOT NULL PRIMARY KEY,
TRANSACTION_CODE VARCHAR(255) NOT NULL,
ARCHIVED_ON DATE NOT NULL,
CATEGORY_TYPE VARCHAR(255),
BANK_NAME VARCHAR(255) NOT NULL,
);