-- client-invoice
SELECT Invoices.invoiceId, Invoices.contractId, Invoices.clientId, Invoices.paymentDate, Invoices.paymentStatus, Invoices.amount FROM Invoices LEFT JOIN Clients ON Invoices.clientId = Clients.clientId WHERE Invoices.clientId = 1;

SELECT Invoices.invoiceId, Invoices.contractId, Invoices.clientId, Invoices.paymentDate, Invoices.paymentStatus, Invoices.amount FROM Invoices LEFT JOIN Clients ON Invoices.clientId = Clients.clientId WHERE Invoices.amount > 100000; 
-- + do powyższego dodać doklejenie nazwy klienta z Tabeli Clients
-- client-contract

-- contract-attachment
-- project-task