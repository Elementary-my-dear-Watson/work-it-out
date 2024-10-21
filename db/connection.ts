import { Client } from 'pg';
import * as dotenv from 'dotenv';
dotenv.config();
const client = new Client({
  user: process.env.DB_USER as string,
  host: process.env.DB_HOST as string,
  database: process.env.DB_NAME as string,
  password: process.env.DB_PASS as string,
  port: parseInt(process.env.DB_PORT || '5432')
});
client.connect((err) => {
  if (err) {
    console.error('Failed to connect to database', err);
  } else {
    console.log('Connected to database');
  }
});
export default client;