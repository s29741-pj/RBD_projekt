-- agregate

SELECT SUM(contractValue) FROM contracts;
SELECT SUM(budget) FROM projects WHERE projectType="3";
SELECT SUM(amount) FROM invoices WHERE paymentStatus=FALSE;
SELECT COUNT(invoiceId) FROM invoices WHERE paymentStatus=FALSE;


-- LIKE
SELECT * FROM attachments WHERE attachName LIKE '%guide';
SELECT * FROM attachments WHERE type LIKE '_DF';

-- subquery

SELECT clientName FROM clients WHERE clientId IN (SELECT clientId FROM contracts WHERE contractValue>100000);
