-- CLIENTS

INSERT INTO Clients (clientId, clientName, email, phone, contactPerson, activeAgreements) VALUES
(1, 'Tech Innovators Inc.', 'info@techinnovators.com', 123456789, 'Alice Johnson', 3),
(2, 'Green Solutions Ltd.', 'support@greensolutions.com', 987654321, 'Bob Green', 5),
(3, 'Alpha Logistics', 'contact@alphalogistics.com', 111223344, 'Charlie Brown', 2),
(4, 'Blue Horizon Travels', 'info@bluehorizon.com', 223344556, 'Diana Smith', 1),
(5, 'Peak Construction Co.', 'hello@peakconstruct.com', 334455667, 'Evan Torres', 4),
(6, 'EcoWorld', 'info@ecoworld.org', 445566778, 'Fiona Clarke', 0),
(7, 'Summit Financial', 'contact@summitfinance.com', 556677889, 'George Evans', 7),
(8, 'Starline Entertainments', 'info@starline.com', 667788990, 'Hannah Fox', 2),
(9, 'Quantum Mechanics Ltd.', 'support@quantum.com', 778899001, 'Ian Cooper', 3),
(10, 'Oceanic Ventures', 'contact@oceanicventures.com', 889900112, 'Julia Rivera', 6),
(11, 'Urban Builders', 'hello@urbanbuilders.com', 991001223, 'Kevin Wright', 4),
(12, 'SkyTech Solutions', 'support@skytech.com', 101112334, 'Laura Phillips', 5),
(13, 'Pioneer Healthcare', 'contact@pioneerhealth.com', 112233445, 'Mona Lisa', 2),
(14, 'Elite Educators', 'info@eliteeducators.org', 123344556, 'Nathan Hall', 0),
(15, 'Digital Creatives', 'support@digitalcreatives.com', 134455667, 'Olivia Reed', 3),
(16, 'Fusion Energy Corp.', 'hello@fusionenergy.com', 145566778, 'Patrick Harris', 8),
(17, 'Velocity Dynamics', 'contact@velocitydynamics.com', 156677889, 'Quinn Hughes', 5),
(18, 'BrightFuture Co.', 'info@brightfuture.com', 167788990, 'Rachel Scott', 1),
(19, 'Luxe Interiors', 'support@luxeinteriors.com', 178899001, 'Sam Taylor', 0),
(20, 'Global Innovators', 'contact@globalinnovators.com', 189900112, 'Tina Morgan', 6);

-- CONTRACTS

INSERT INTO Contracts (contractId, clientId, title, agreementType, client, contractValue, dateConcluded, execDate) VALUES
(101, 1, 'AI Research Agreement', 'Service', 'Tech Innovators Inc.', 50000.00, '2023-11-01', '2024-01-15'),
(102, 2, 'Energy Efficiency Study', 'Consulting', 'Green Solutions Ltd.', 75000.00, '2023-10-15', '2024-06-30'),
(103, 3, 'Logistics Software Development', 'Software', 'Alpha Logistics', 60000.00, '2023-09-10', '2024-03-15'),
(104, 4, 'Travel Services Platform', 'Software', 'Blue Horizon Travels', 45000.00, '2023-12-01', '2025-09-01'),
(105, 5, 'Construction Monitoring', 'Service', 'Peak Construction Co.', 80000.00, '2023-08-15', '2024-12-20'),
(106, 6, 'Environmental Analysis', 'Consulting', 'EcoWorld', 70000.00, '2023-07-10', '2024-11-15'),
(107, 7, 'Financial Dashboard Development', 'Software', 'Summit Financial', 65000.00, '2023-06-15', '2025-02-28'),
(108, 8, 'Content Streaming Platform', 'Software', 'Starline Entertainments', 120000.00, '2023-11-25', '2025-04-10'),
(109, 9, 'Quantum Computing Research', 'Research', 'Quantum Mechanics Ltd.', 200000.00, '2023-05-15', '2025-06-01'),
(110, 10, 'Marine Study Contract', 'Research', 'Oceanic Ventures', 90000.00, '2023-10-05', '2024-08-30'),
(111, 11, 'Urban Planning Tools', 'Service', 'Urban Builders', 55000.00, '2023-11-20', '2025-01-20'),
(112, 12, 'HR Software Development', 'Software', 'SkyTech Solutions', 75000.00, '2023-09-15', '2025-03-15'),
(113, 13, 'Healthcare Management Tools', 'Software', 'Pioneer Healthcare', 85000.00, '2023-08-10', '2025-05-30'),
(114, 14, 'Educational Content Portal', 'Consulting', 'Elite Educators', 40000.00, '2023-12-01', '2024-10-15'),
(115, 15, 'Digital Marketing Campaign', 'Service', 'Digital Creatives', 110000.00, '2023-06-01', '2025-07-01'),
(116, 16, 'Energy Optimization Framework', 'Consulting', 'Fusion Energy Corp.', 125000.00, '2023-05-20', '2024-09-15'),
(117, 17, 'Workflow Management Tools', 'Software', 'Velocity Dynamics', 100000.00, '2023-07-15', '2024-12-10'),
(118, 18, 'Event Planning Contract', 'Service', 'BrightFuture Co.', 60000.00, '2023-08-25', '2025-02-01'),
(119, 19, 'Interior Design Services', 'Consulting', 'Luxe Interiors', 70000.00, '2023-09-10', '2024-11-01'),
(120, 20, 'Global Innovation Forum', 'Event', 'Global Innovators', 150000.00, '2023-04-15', '2025-05-15');


-- ATTACHMENTS 

INSERT INTO Attachments (attachId, attachName, type, contractId) VALUES
(201, 'Contract Details Document', 'PDF', 101),
(202, 'Energy Assessment Report', 'PDF', 102),
(203, 'Optimization Tool Manual', 'DOCX', 103),
(204, 'Travel App Wireframes', 'IMG', 104),
(205, 'Site Monitoring Blueprint', 'DWG', 105),
(206, 'Eco Impact Study Results', 'PDF', 106),
(207, 'Financial Dashboard Screenshots', 'IMG', 107),
(208, 'Streaming Platform User Guide', 'DOCX', 108),
(209, 'Quantum Computing Proposal', 'PDF', 109),
(210, 'Marine Analysis Report', 'PDF', 110),
(211, 'Urban Planning Draft', 'DWG', 111),
(212, 'HR System Configuration', 'DOCX', 112),
(213, 'Healthcare Platform Agreement', 'PDF', 113),
(214, 'Education Content Plan', 'DOCX', 114),
(215, 'Digital Marketing Strategy', 'PDF', 115),
(216, 'Energy Efficiency Specifications', 'PDF', 116),
(217, 'Workflow Automation Overview', 'PDF', 117),
(218, 'Expo Planning Brochure', 'PDF', 118),
(219, 'Interior Design Tool Guide', 'DOCX', 119),
(220, 'Innovation Forum Agenda', 'PDF', 120);


-- INVOICES

INSERT INTO Invoices (invoiceId, contractId, clientId, paymentDate, paymentStatus, amount) VALUES
(301, 101, 1, '2024-01-20 10:30:00', TRUE, 50000.00),
(302, 102, 2, '2023-12-15 15:45:00', TRUE, 75000.00),
(303, 103, 3, '2024-03-01 09:00:00', FALSE, 60000.00),
(304, 104, 4, '2023-12-10 14:00:00', TRUE, 45000.00),
(305, 105, 5, '2024-04-01 12:30:00', FALSE, 80000.00),
(306, 106, 6, '2023-11-20 16:15:00', TRUE, 70000.00),
(307, 107, 7, '2024-05-05 11:00:00', FALSE, 65000.00),
(308, 108, 8, '2024-06-20 10:00:00', TRUE, 120000.00),
(309, 109, 9, '2024-07-10 13:00:00', FALSE, 200000.00),
(310, 110, 10, '2024-08-25 10:00:00', TRUE, 90000.00),
(311, 111, 11, '2024-01-15 14:30:00', TRUE, 55000.00),
(312, 112, 12, '2024-03-25 11:45:00', FALSE, 75000.00),
(313, 113, 13, '2023-09-20 10:30:00', TRUE, 85000.00),
(314, 114, 14, '2024-05-10 09:15:00', FALSE, 40000.00),
(315, 115, 15, '2023-12-25 13:45:00', TRUE, 110000.00),
(316, 116, 16, '2024-06-25 12:30:00', TRUE, 125000.00),
(317, 117, 17, '2024-09-05 11:00:00', FALSE, 100000.00),
(318, 118, 18, '2024-02-20 15:00:00', TRUE, 60000.00),
(319, 119, 19, '2023-11-20 16:30:00', FALSE, 70000.00),
(320, 120, 20, '2024-09-25 10:00:00', TRUE, 150000.00);


-- PROJECTS

INSERT INTO Projects (projectId, clientId, name, endDate, budget, projectType, contractId) VALUES
(1, 1, 'AI Research Platform', '2025-01-15', 50000.00, 1, 101),
(2, 2, 'Renewable Energy Assessment', '2024-06-30', 75000.00, 2, 102),
(3, 3, 'Logistics Optimization Tool', '2024-03-15', 60000.00, 3, 103),
(4, 4, 'Travel Booking App', '2025-09-01', 45000.00, 1, 104),
(5, 5, 'Construction Site Monitoring System', '2024-12-20', 80000.00, 4, 105),
(6, 6, 'Environmental Impact Study', '2024-11-15', 70000.00, 2, 106),
(7, 7, 'Financial Analytics Dashboard', '2025-02-28', 65000.00, 1, 107),
(8, 8, 'Streaming Content Platform', '2025-04-10', 120000.00, 3, 108),
(9, 9, 'Quantum Computing Framework', '2025-06-01', 200000.00, 1, 109),
(10, 10, 'Marine Ecosystem Analysis', '2024-08-30', 90000.00, 2, 110),
(11, 11, 'Urban Planning Software', '2025-01-20', 55000.00, 4, 111),
(12, 12, 'Cloud-Based HR System', '2025-03-15', 75000.00, 1, 112),
(13, 13, 'Healthcare Management Platform', '2025-05-30', 85000.00, 3, 113),
(14, 14, 'Educational Content Portal', '2024-10-15', 40000.00, 2, 114),
(15, 15, 'Digital Marketing Suite', '2025-07-01', 110000.00, 1, 115),
(16, 16, 'Energy Efficiency Framework', '2024-09-15', 125000.00, 2, 116),
(17, 17, 'Manufacturing Workflow System', '2024-12-10', 100000.00, 4, 117),
(18, 18, 'Future Tech Expo Planning', '2025-02-01', 60000.00, 3, 118),
(19, 19, 'Interior Design VR Tool', '2024-11-01', 70000.00, 3, 119),
(20, 20, 'Global Innovation Forum', '2025-05-15', 150000.00, 2, 120);


-- TASKS

INSERT INTO Tasks (taskId, contractId, clientId, projectId, dateExec, taskDesc) VALUES
(1, 101, 1, 1, '2024-02-15', 'Design the architecture for the AI research platform.'),
(2, 102, 2, 2, '2024-01-10', 'Conduct an on-site energy assessment for the renewable project.'),
(3, 103, 3, 3, '2024-02-28', 'Develop the logistics optimization algorithm.'),
(4, 104, 4, 4, '2024-03-20', 'Create user interface designs for the travel booking app.'),
(5, 105, 5, 5, '2024-04-15', 'Install monitoring equipment at the construction site.'),
(6, 106, 6, 6, '2024-05-01', 'Analyze environmental impact data and prepare a report.'),
(7, 107, 7, 7, '2024-05-25', 'Build a financial dashboard for real-time analytics.'),
(8, 108, 8, 8, '2024-06-10', 'Develop and test the streaming content platform.'),
(9, 109, 9, 9, '2024-06-30', 'Create quantum computing framework documentation.'),
(10, 110, 10, 10, '2024-07-15', 'Analyze marine ecosystem data and draft findings.'),
(11, 111, 11, 11, '2024-08-01', 'Develop urban planning models for new software.'),
(12, 112, 12, 12, '2024-09-10', 'Configure HR system for cloud deployment.'),
(13, 113, 13, 13, '2024-10-05', 'Develop healthcare management software for patient records.'),
(14, 114, 14, 14, '2024-11-01', 'Prepare and review educational content for the portal.'),
(15, 115, 15, 15, '2024-12-10', 'Create a marketing campaign strategy for digital tools.'),
(16, 116, 16, 16, '2025-01-15', 'Optimize energy efficiency framework and deploy.'),
(17, 117, 17, 17, '2025-02-01', 'Implement workflow automation in manufacturing sites.'),
(18, 118, 18, 18, '2025-03-01', 'Plan and execute Future Tech Expo presentations.'),
(19, 119, 19, 19, '2025-03-20', 'Develop a VR interface for interior design tools.'),
(20, 120, 20, 20, '2025-04-10', 'Organize and finalize agenda for the Global Innovation Forum.');


