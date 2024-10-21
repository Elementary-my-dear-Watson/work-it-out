INSERT INTO Employee (first_name, last_name, role_id, manager_id) 
VALUES
('Morty', 'Smith', 1, 1),
('Rick', 'Sanchez', 2, 2),
('Jerry', 'Smith', 3, 3),
('Beth', 'Smith', 4, 4),
('Summer', 'Smith', 5, 5),
('Bird', 'Person', 6, 6),
('Krombopulos', 'Michael', 7, 7),
('Wayne', 'Poopybutthole', 8, 8),
('Cornvelious', 'Daniel', 9, 9),
('Shrimpy', 'Pibbles', 10, 10),
('Scary', 'Terry', 11, 11),
('Dr.', 'Wong', 12, 12),
('Gene', 'Vagina', 13, 13)

SELECT * FROM Employee;

INSERT INTO Department (name)
VALUES
('Engineering'),
('Product'),
('Sales');

INSERT INTO Role (title)
VALUES
('Software Engneer'),
('Product Manager'),
('Sales Associate');