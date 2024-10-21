-- Truncate the tables to remove existing data (faster than DELETE)
TRUNCATE TABLE Employee, Role, Department RESTART IDENTITY CASCADE;

-- Insert seed data for Department table
INSERT INTO Department (name)
VALUES
('Engineering'),
('Product'),
('Sales');

-- Insert seed data for Role table
INSERT INTO Role (title, salary, department_id)
VALUES
('Software Engineer', 90000, 1),  -- Associate with Engineering
('Product Manager', 80000, 2),    -- Associate with Product
('Sales Associate', 60000, 3);     -- Associate with Sales

-- Insert seed data for Employee table
-- Assuming the following hierarchy where all employees report to managers:
-- 1: Morty (Software Engineer) - Manager: Rick
-- 2: Rick (Product Manager) - Manager: None (top level)
-- 3: Jerry (Sales Associate) - Manager: None (top level)
-- 4: Beth (Software Engineer) - Manager: Morty
-- 5: Summer (Product Manager) - Manager: Rick
-- 6: Bird (Sales Associate) - Manager: Jerry
-- 7: Krombopulos (Software Engineer) - Manager: Morty
-- 8: Wayne (Product Manager) - Manager: Rick
-- 9: Cornvelious (Sales Associate) - Manager: Jerry
-- 10: Shrimpy (Software Engineer) - Manager: Morty
-- 11: Scary (Product Manager) - Manager: Rick
-- 12: Dr. Wong (Sales Associate) - Manager: Jerry
-- 13: Gene (Software Engineer) - Manager: Morty

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES
('Morty', 'Smith', 1, 2),          -- Morty reports to Rick (manager_id: 2)
('Rick', 'Sanchez', 2, 2),         -- Rick is a Product Manager, but also a top-level employee
('Jerry', 'Smith', 3, 2),          -- Jerry reports to Rick
('Beth', 'Smith', 1, 1),           -- Beth reports to Morty
('Summer', 'Smith', 2, 2),         -- Summer reports to Rick
('Bird', 'Person', 3, 3),          -- Bird reports to Jerry
('Krombopulos', 'Michael', 1, 1),  -- Krombopulos reports to Morty
('Wayne', 'Poopybutthole', 2, 2),  -- Wayne reports to Rick
('Cornvelious', 'Daniel', 3, 3),   -- Cornvelious reports to Jerry
('Shrimpy', 'Pibbles', 1, 1),      -- Shrimpy reports to Morty
('Scary', 'Terry', 2, 2),          -- Scary reports to Rick
('Dr.', 'Wong', 3, 3),             -- Dr. Wong reports to Jerry
('Gene', 'Vagina', 1, 1);          -- Gene reports to Morty
