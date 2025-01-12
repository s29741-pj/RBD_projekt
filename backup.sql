CREATE TABLE Clients (
	clientId INT PRIMARY KEY NOT NULL,
    name VARCHAR(250),
   	email VARCHAR(100) CHECK (email REGEXP '^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}$'),
   	phone VARCHAR(9) CHECK (phone REGEXP '^[0-9]{9}$'),
    contactPerson VARCHAR(100),
    activeAgreements SMALLINT
);

CREATE TABLE Projects (
	projectId INT PRIMARY KEY NOT NULL,
    clientId INT,
        FOREIGN KEY (clientId)
        REFERENCES Clients(clientId)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    name VARCHAR(250),
    endDate DATE,
    budget DECIMAL(10,2),
    projectType INTEGER
);
CREATE TABLE Attachments (
	attachId INT PRIMARY KEY NOT NULL,
    attachName VARCHAR(200),
    type CHAR(100)
);

CREATE TABLE Contracts (
	contractId INT PRIMARY KEY NOT NULL,
    clientId INT,
        FOREIGN KEY (clientId)
        REFERENCES Clients(clientId)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    title VARCHAR(250),
    agreementType VARCHAR(250),
    client VARCHAR(250),
    contractValue DECIMAL(10,2),
    dateConcluded DATE,
    execDate DATE
);

CREATE TABLE Invoices (
	invoiceId INT PRIMARY KEY NOT NULL,
    contractId INT,
        FOREIGN KEY (contractId)
        REFERENCES Contracts(contractId)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    clientId INT,
        FOREIGN KEY (clientId)
        REFERENCES Clients(clientId)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
   	paymentDate TIMESTAMP,
    paymentStatus BOOLEAN,
    amount DECIMAL(10,2)
);
CREATE TABLE Tasks (
	taskId INT PRIMARY KEY NOT NULL,
    contractId INT, 
        FOREIGN KEY (contractId)
        REFERENCES Contracts(contractId)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    clientId INT,
        FOREIGN KEY (clientId)
        REFERENCES Clients(clientId)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    projectId INT,
        FOREIGN KEY (projectId)
        REFERENCES Projects(projectId)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    dateExec DATE,
    description VARCHAR(1200)
);

ALTER TABLE Projects
ADD contractId INT,
ADD FOREIGN KEY (contractId)
REFERENCES Contracts(contractId)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Attachments
ADD contractId INT,
    ADD FOREIGN KEY (contractId)
    REFERENCES Contracts(contractId)
    ON DELETE CASCADE
    ON UPDATE CASCADE;


ALTER TABLE Clients ADD COLUMN clientName VARCHAR(250);
ALTER TABLE Clients DROP COLUMN name;
ALTER TABLE Projects ADD COLUMN isEnded BOOLEAN;
ALTER TABLE Tasks ADD COLUMN taskDesc VARCHAR(1200);
ALTER TABLE Tasks DROP COLUMN description;


