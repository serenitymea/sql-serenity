SELECT o.orderid, c.fname, p.tname, a.animatorname, o.eventdate
FROM orders o
JOIN clients c ON o.clientid = c.id
JOIN partythemes p ON o.partythemeid = p.tid
JOIN animators a ON o.animatorid = a.animatorid;

SELECT p.tname, SUM(o.totalprice) AS totalrevenue
FROM orders o
JOIN partythemes p ON o.partythemeid = p.tid
GROUP BY p.tname;

SELECT s.supname, SUM(os.quantused) AS totalused
FROM ordersupplies os
JOIN supplies s ON os.supplyid = s.supid
GROUP BY s.supname
ORDER BY totalused DESC
FETCH FIRST 1 ROWS ONLY;

SELECT svc.servicename, COUNT(*) AS usagecount
FROM orderandservices os
JOIN services svc ON os.serviceid = svc.serviceid
GROUP BY svc.servicename
ORDER BY usagecount DESC;

SELECT a.animatorname, COUNT(*) AS totalorders
FROM orders o
JOIN animators a ON o.animatorid = a.animatorid
GROUP BY a.animatorname;

SELECT c.fname, AVG(o.totalprice) AS avgpayment
FROM orders o
JOIN clients c ON o.clientid = c.id
GROUP BY c.fname;

SELECT o.orderid, o.eventdate
FROM orders o
JOIN ordersupplies os ON o.orderid = os.orderid
WHERE os.supplyid = 3;

SELECT c.fname, COUNT(*) AS ordercount
FROM orders o
JOIN clients c ON o.clientid = c.id
GROUP BY c.fname
HAVING COUNT(*) > 1;

SELECT EXTRACT(YEAR FROM eventdate) AS year, SUM(totalprice) AS totalincome
FROM orders
GROUP BY EXTRACT(YEAR FROM eventdate);

SELECT s.servicename
FROM services s
MINUS
SELECT s.servicename
FROM orderandservices os
JOIN services s ON os.serviceid = s.serviceid;