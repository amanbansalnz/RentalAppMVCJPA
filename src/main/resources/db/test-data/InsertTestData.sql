
INSERT INTO TRANSACTIONS (MEMBER_ID, REPEAT_TRANSACTION_COUNTER, TYPE, DESCRIPTION, RECEIVED_ON, PAID_ON, AMOUNT, BALANCE, RAW_DESCRIPTION, IDENTIFIER, TRANSACTION_CODE, TO_DATE, FROM_DATE, CATEGORY_TYPE, BANK_NAME, UPLOADED_ON, UPLOAD_NUMBER, MEMBER_STATEMENT_UPLOAD_SUMMARY_ID)
VALUES (4, 1, 'CARD PAYMENT', 'NANDOS,10.70 GBP, RATE 1.00/GBP', DATE '2017-05-26', DATE '2017-05-24', 10.7, 9351.98, '26th May CARD PAYMENT TO NANDOS,10.70 GBP, RATE 1.00/GBP ON 24-05-2017 10.70 9,351.98', 'fee1ced3573a530dfffd76e83029a7d4db204b6835b241faf705e624820a66c0', 'DEBIT', DATE '2017-04-27' , DATE '2017-05-26', 'FOOD', 'SANTANDER', CURRENT_TIMESTAMP, 1, 1);

INSERT INTO TRANSACTIONS (MEMBER_ID, REPEAT_TRANSACTION_COUNTER, TYPE, DESCRIPTION, RECEIVED_ON, PAID_ON, AMOUNT, BALANCE, RAW_DESCRIPTION, IDENTIFIER, TRANSACTION_CODE, TO_DATE, FROM_DATE, CATEGORY_TYPE, BANK_NAME, UPLOADED_ON, UPLOAD_NUMBER, MEMBER_STATEMENT_UPLOAD_SUMMARY_ID)
VALUES (4, 1, 'CARD PAYMENT', 'NANDOS,10.70 GBP, RATE 1.00/GBP', DATE '2017-05-26', DATE '2017-05-24', 10.7, 9351.98, '26th May CARD PAYMENT TO NANDOS,10.70 GBP, RATE 1.00/GBP ON 24-05-2017 10.70 9,351.98', 'fee1ced3573a530dfffd76e83029a7d4db204b6835b241faf705e624820a66kk0', 'DEBIT', DATE '2017-04-27' , DATE '2017-05-26', 'FOOD', 'SANTANDER', CURRENT_TIMESTAMP, 1, 6);



INSERT INTO USER (ID, EMAIL, PASSWORD, SECRET, ENABLED, CREATED, ROLE)
VALUES (1, 'user@testmail.com', '$2a$10$hIUbhxgBGX3b055uxU/YYuYifsSqapFtxZiQRzXB5uxvox8hl2t0W', '75T4BTFG43EOVRXQ', TRUE, '2018-04-11 23:25:56', 'ROLE_USER');

INSERT INTO USER (ID, EMAIL, PASSWORD, SECRET, ENABLED, CREATED, ROLE)
VALUES (2, 'user2@testmail.com', '$2a$10$hIUbhxgBGX3b055uxU/YYuYifsSqapFtxZiQRzXB5uxvox8hl2t0W', 'secret', FALSE, '2018-04-11 23:25:56', 'ROLE_USER');

INSERT INTO USER (ID, EMAIL, PASSWORD, SECRET, ENABLED, CREATED, ROLE)
VALUES (3, 'user3@testmail.com', '$2a$10$hIUbhxgBGX3b055uxU/YYuYifsSqapFtxZiQRzXB5uxvox8hl2t0W', 'secret', TRUE, '2018-04-11 23:25:56', 'ROLE_USER');

INSERT INTO USER (ID, EMAIL, PASSWORD, SECRET, ENABLED, CREATED, ROLE)
VALUES (4, 'user4@testmail.com', '$2a$10$hIUbhxgBGX3b055uxU/YYuYifsSqapFtxZiQRzXB5uxvox8hl2t0W', 'secret', TRUE, '2018-04-11 23:25:56', 'ROLE_USER');

INSERT INTO USER (ID, EMAIL, PASSWORD, SECRET, ENABLED, CREATED, ROLE)
VALUES (5, 'user5@testmail.com', '$2a$10$hIUbhxgBGX3b055uxU/YYuYifsSqapFtxZiQRzXB5uxvox8hl2t0W', 'secret', TRUE, '2018-04-11 23:25:56', 'ROLE_USER');

INSERT INTO USER (ID, EMAIL, PASSWORD, SECRET, ENABLED, CREATED, ROLE)
VALUES (6, 'user6@testmail.com', '$2a$10$hIUbhxgBGX3b055uxU/YYuYifsSqapFtxZiQRzXB5uxvox8hl2t0W', 'secret', TRUE, '2018-04-11 23:25:56', 'ROLE_USER');

INSERT INTO USER (ID, EMAIL, PASSWORD, SECRET, ENABLED, CREATED, ROLE)
VALUES (7, 'aman@trackit.com', '$2a$10$hIUbhxgBGX3b055uxU/YYuYifsSqapFtxZiQRzXB5uxvox8hl2t0W', 'secret', TRUE, '2018-04-11 23:25:56', 'ADMIN');

INSERT INTO USER (ID, EMAIL, PASSWORD, SECRET, ENABLED, CREATED, ROLE)
VALUES (8, 'trackit.helpdesk.org@gmail.com', '$2a$10$UI4CyN/q0qjQCwewewEMjOw5NDgkxwmZeFL8mWqCNarF8fLhPgAOa', 'secret', TRUE, '2018-04-11 23:25:56', 'ADMIN');



INSERT INTO VERIFICATION_TOKEN (ID, TOKEN, TOKEN_TYPE, EXPIRY_DATE, USER_ID)
VALUES(1, '81d063df-5b73-4f13-8639-330c2354a4bb', 'REGISTRATION_CONFIRMATION', CURRENT_DATE , 2);

INSERT INTO VERIFICATION_TOKEN (ID, TOKEN, TOKEN_TYPE, EXPIRY_DATE, USER_ID)
VALUES(2, '83d063df-5b73-4f13-8639-330c235434bb', 'PASSWORD_RESET', CURRENT_DATE , 3);


INSERT INTO MEMBER_STATEMENT_UPLOAD_SUMMARY (ID, MEMBER_ID, UPLOADED_ON)
VALUES(1, 4, CURRENT_DATE);

INSERT INTO MEMBER_STATEMENT_UPLOAD_SUMMARY (ID, MEMBER_ID, UPLOADED_ON)
VALUES(6, 4, CURRENT_DATE);
