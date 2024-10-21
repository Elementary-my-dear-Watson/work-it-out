import { Client } from 'pg';
const client = new Client({
    user: 'postgres',  // Your PostgreSQL username
    host: 'localhost',
    database: 'employee_db',  // Your database name
    password: 'your_password',  // Your database password
    port: 5432,
});
client.connect()
    .then(() => console.log('Connected to the database.'))
    .catch((err) => console.error('Connection error', err.stack));
export default client;