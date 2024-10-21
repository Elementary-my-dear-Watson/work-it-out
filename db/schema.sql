DROP TABLE IF EXISTS Department CASCADE;
DROP TABLE IF EXISTS Role CASCADE;
DROP TABLE IF EXSITS Employee CASCADE;

CREATE TABLE Department (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE Role (
    id SERIAL PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL NOT NULL,
    description_id INTEGER NOT NULL
);

CREATE TABLE Employee (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR (30),
    role_id INTEGER NOT NULL,
    manager_id INTEGER NOT NULL
    FOREIGN KEY (role_id) REFERENCES Role(id),
    FOREIGN KEY (manager_id) REFERENCES Employee(id) ON DELETE SET NULL
    );

