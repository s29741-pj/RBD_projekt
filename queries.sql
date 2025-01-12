-- UPDATE

UPDATE Contracts SET contractValue=55750.00 WHERE client="Tech Innovators Inc.";
UPDATE Contracts SET agreementType="Maintenance" WHERE agreementType="Service";
UPDATE Clients SET email="contact@summitfinancial.com" WHERE clientName="Summit Financial";
UPDATE Projects SET isEnded=TRUE WHERE endDate < NOW()
UPDATE Projects SET isEnded=FALSE WHERE endDate < NOW()

UPDATE Projects
SET endDate = DATE_ADD(endDate, INTERVAL 1 MONTH)
WHERE endDate > CURDATE() AND endDate < '2025-02-01';


UPDATE Clients
SET activeAgreements = 0
WHERE clientId NOT IN (
    SELECT DISTINCT clientId FROM Contracts WHERE execDate < CURDATE()
);

UPDATE Tasks
SET dateExec = DATE_ADD(dateExec, INTERVAL 1 MONTH)
WHERE projectId NOT IN (
    SELECT DISTINCT projectId FROM Projects WHERE endDate > CURDATE() AND endDate < '2025-01-31'
);


-- DELETE

DELETE FROM Invoices 
WHERE paymentDate < CURDATE() AND paymentStatus=TRUE;

DELETE FROM Clients
WHERE activeAgreements = 0;

DELETE FROM Tasks
WHERE projectId NOT IN (
    SELECT DISTINCT projectId FROM Projects WHERE endDate < CURDATE();

DELETE FROM Attachments WHERE attachName LIKE '% Agreement';

DELETE FROM Contracts WHERE execDate < NOW();

DELETE FROM Clients
WHERE activeAgreements = 0 AND contactPerson = 'John Doe';

DELETE FROM Clients
WHERE clientId = 10;




