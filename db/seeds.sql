-- Insert departments
INSERT INTO Department (name)
VALUES
('Engineering'),
('Product'),
('Sales');

-- Insert roles
INSERT INTO Role (title, salary, department_id)
VALUES
('Software Engineer', 90000, 1),  -- Engineering role
('Product Manager', 80000, 2),    -- Product role
('Sales Associate', 60000, 3);     -- Sales role

-- Insert employees
INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES
('Rick', 'Sanchez', 1, NULL),      -- Rick as Software Engineer, manager of Morty, Bird Person, and Krombopulos
('Morty', 'Smith', 1, 1),          -- Morty Software Engineer
('Beth', 'Smith', 2, NULL),         -- Beth as Product Manager, manager of Summer, Jerry, Mr. Poopybutthole, and Shrimpy Pibbles
('Summer', 'Smith', 3, 2),          -- Summer as Sales Associate
('Jerry', 'Smith', 3, 2),           -- Jerry as Sales Associate
('Bird', 'Person', 1, 1),           -- Bird Person as Software Engineer
('Krombopulos', 'Michael', 1, 1),   -- Krombopulos as Software Engineer
('Mr.', 'Poopybutthole', 3, 2),      -- Mr. Poopybutthole as Sales Associate
('Shrimpy', 'Pibbles', 3, 2),        -- Shrimpy Pibbles as Sales Associate
('Dr.', 'Wong', 2, NULL),            -- Dr. Wong as Product Manager (no manager assigned)
('Principal', 'Vagina', 2, NULL);    -- Principal Vagina as Product Manager (no manager assigned)