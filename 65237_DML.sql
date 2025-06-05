
INSERT INTO clients VALUES (1, 'Ann Boom', '123456789', 'ann@gmail.com', SYSDATE);
INSERT INTO clients VALUES (2, 'Bob Parker', '987654321', 'bob@gmail.com', SYSDATE);

INSERT INTO animators VALUES (1, 'Clown', 5, '111111111');
INSERT INTO animators VALUES (2, 'Fairy', 3, '222222222');

INSERT INTO partythemes VALUES (1, 'pirates', 5, 10);
INSERT INTO partythemes VALUES (2, 'princesses', 4, 9);

INSERT INTO services VALUES (1, 'face painting', 500);
INSERT INTO services VALUES (2, 'soap bubble show', 1500);
INSERT INTO services VALUES (3, 'science show', 2000);

INSERT INTO supplies VALUES (1, 'pirate chest', 5);
INSERT INTO supplies VALUES (2, 'princess castle', 3);
INSERT INTO supplies VALUES (3, 'soap bubbles XXL', 10);

INSERT INTO orders VALUES (1, 1, 1, 1, TO_DATE('2025-06-01', 'YYYY-MM-DD'), 3000, SYSDATE);
INSERT INTO orders VALUES (2, 2, 2, 2, TO_DATE('2025-06-05', 'YYYY-MM-DD'), 2500, SYSDATE);

INSERT INTO orderandservices VALUES (1, 1, 1);
INSERT INTO orderandservices VALUES (1, 2, 1);
INSERT INTO orderandservices VALUES (2, 1, 1);
INSERT INTO orderandservices VALUES (2, 3, 1);

INSERT INTO ordersupplies VALUES (1, 1, 1);
INSERT INTO ordersupplies VALUES (1, 3, 1);
INSERT INTO ordersupplies VALUES (2, 2, 1);
INSERT INTO ordersupplies VALUES (2, 3, 1);
