CREATE TABLE clients (
    id NUMBER PRIMARY KEY,
    fname VARCHAR2(100) NOT NULL,
    phone VARCHAR2(20),
    email VARCHAR2(100),
    regdate DATE DEFAULT SYSDATE
);

CREATE TABLE animators (
    animatorid NUMBER PRIMARY KEY,
    animatorname VARCHAR2(100) NOT NULL,
    expyears NUMBER CHECK (expyears >= 0),
    phone VARCHAR2(20)
);

CREATE TABLE partythemes (
    tid NUMBER PRIMARY KEY,
    tname VARCHAR2(100) UNIQUE,
    recommendedagef NUMBER,
    recommendedaget NUMBER
);

CREATE TABLE services (
    serviceid NUMBER PRIMARY KEY,
    servicename VARCHAR2(100) NOT NULL,
    price NUMBER(10, 2) CHECK (price >= 0)
);

CREATE TABLE supplies (
    supid NUMBER PRIMARY KEY,
    supname VARCHAR2(100) NOT NULL,
    stock NUMBER CHECK (stock >= 0)
);

CREATE TABLE orders (
    orderid NUMBER PRIMARY KEY,
    clientid NUMBER REFERENCES clients(id),
    animatorid NUMBER REFERENCES animators(animatorid),
    partythemeid NUMBER REFERENCES partythemes(tid),
    eventdate DATE NOT NULL,
    totalprice NUMBER(10,2),
    createdat DATE DEFAULT SYSDATE
);

CREATE TABLE orderandservices (
    orderid NUMBER REFERENCES orders(orderid),
    serviceid NUMBER REFERENCES services(serviceid),
    quantity NUMBER DEFAULT 1,
    PRIMARY KEY (orderid, serviceid)
);

CREATE TABLE ordersupplies (
    orderid NUMBER REFERENCES orders(orderid),
    supplyid NUMBER REFERENCES supplies(supid),
    quantused NUMBER CHECK (quantused >= 0),
    PRIMARY KEY (orderid, supplyid)
);

CREATE INDEX idxordersclient ON orders(clientid);
CREATE INDEX idxordersanim ON orders(animatorid);
