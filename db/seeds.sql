-- Insert departments
INSERT INTO Department (name)
VALUES
('Science Division'),
('Product Management'),
('Sales and Marketing'),
('Intergalactic Relations'),
('Technical Support');

-- Insert roles
INSERT INTO Role (title, salary, department_id)
VALUES
('Lead Scientist', 120000, 1),     -- Role for Rick Sanchez
('Junior Scientist', 90000, 1),    -- Role for Morty
('Product Manager', 80000, 2),     -- Role for Beth
('Sales Associate', 60000, 3),      -- Role for Summer
('Sales Executive', 70000, 3),     -- Role for Jerry
('Intergalactic Sales Rep', 75000, 3), -- Role for Mr. Poopybutthole
('Science Consultant', 85000, 1),   -- Role for Bird Person
('Assassin', 95000, 1),             -- Role for Krombopulos Michael
('Crisis Manager', 70000, 4),       -- Role for Tammy Gueterman
('Alien Relations Officer', 80000, 4), -- Role for Mr. Meeseeks
('Technical Support Specialist', 60000, 5), -- Role for Evil Morty
('Software Developer', 90000, 1);    -- Role for Unity

-- Insert employees
INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES
('Rick', 'Sanchez', 1, NULL),          -- Rick as Lead Scientist, no manager
('Morty', 'Smith', 2, 1),              -- Morty as Junior Scientist, reporting to Rick
('Beth', 'Smith', 3, NULL),             -- Beth as Product Manager, no manager
('Summer', 'Smith', 4, 3),              -- Summer as Sales Associate, reporting to Beth
('Jerry', 'Smith', 5, 3),               -- Jerry as Sales Executive, reporting to Beth
('Mr.', 'Poopybutthole', 6, 3),         -- Mr. Poopybutthole as Intergalactic Sales Rep, reporting to Beth
('Bird', 'Person', 7, 1),               -- Bird Person as Science Consultant, reporting to Rick
('Krombopulos', 'Michael', 8, 1),       -- Krombopulos Michael as Assassin, reporting to Rick
('Tammy', 'Gueterman', 9, NULL),        -- Tammy as Crisis Manager, no manager
('Mr.', 'Meeseeks', 10, 9),             -- Mr. Meeseeks as Alien Relations Officer, reporting to Tammy
('Evil', 'Morty', 11, NULL),             -- Evil Morty as Technical Support Specialist, no manager
('Unity', '', 12, 1);                    -- Unity as Software Developer, reporting to Rick
