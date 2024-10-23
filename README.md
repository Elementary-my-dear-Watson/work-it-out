# work-it-out
This repo is for a business owner who wants to be organized by managing the departments, roles, and employees in there company to help plan their business.

# Employee Tracker

## Overview

The **Employee Tracker** is a command-line application designed to help business owners manage their employee database effectively. Built using Node.js, Inquirer, and PostgreSQL, this application allows users to view and manage departments, roles, and employees within their company, facilitating better organization and planning.

## User Story

- **As a business owner**, I want to be able to view and manage the departments, roles, and employees in my company so that I can organize and plan my business.

## Acceptance Criteria

The application meets the following acceptance criteria:

- **Start the Application**: When the application starts, users are presented with options to:
  - View all departments
  - View all roles
  - View all employees
  - Add a department
  - Add a role
  - Add an employee
  - Update an employee's role

- **View All Departments**: When users choose to view all departments, they see a formatted table displaying department names and IDs.

- **View All Roles**: When users choose to view all roles, they see a table with job titles, role IDs, the corresponding department, and the salary for each role.

- **View All Employees**: When users choose to view all employees, they see a formatted table showing employee data, including IDs, first names, last names, job titles, departments, salaries, and managers.

- **Add a Department**: When users choose to add a department, they are prompted to enter the department name, which is then added to the database.

- **Add a Role**: When users choose to add a role, they are prompted to enter the name, salary, and department for the role, which is then added to the database.

- **Add an Employee**: When users choose to add an employee, they are prompted to enter the employee's first name, last name, role, and manager, which are then added to the database.

- **Update an Employee Role**: When users choose to update an employee's role, they are prompted to select an employee and their new role, which is then updated in the database.

## Technologies Used

- **Node.js**: JavaScript runtime for building server-side applications.
- **Inquirer**: A library for building interactive command-line user interfaces.
- **PostgreSQL**: Relational database management system for storing employee data.

## Installation

### Prerequisites

Make sure you have the following installed:

- [Node.js](https://nodejs.org/en/download/) (version X.X.X or higher)
- [PostgreSQL](https://www.postgresql.org/download/) (version X.X.X or higher)

### Clone the Repository

```bash
git clone https://github.com/your-username/employee-tracker.git
cd employee-tracker
