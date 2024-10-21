import client from '../db/connection';

interface Employee {
    first_name: string;
    last_name: string;
    role_id: number;
    manager_id: number;
}

export const viewEmployees = async () => {
    try {
        const res = await client.query('SELECT * FROM Employee');
        return res.rows;
    } catch (err) {
        console.error('Failed to view employees', err);
    }
}

export const addEmployee = async (employeeData: Employee) => {
    const { first_name, last_name, role_id, manager_id } = employeeData;
    try {
        await client.query('INSERT INTO Employee (first_name, last_name, role_id, manager_id) VALUES ($1, $2, $3, $4)', [first_name, last_name, role_id, manager_id]);
        console.log('Employee added successfully');
    } catch (err) {
        console.error('Failed to add employee', err);
    } }

