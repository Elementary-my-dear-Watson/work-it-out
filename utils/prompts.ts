import inquirer from "inquirer";

export const mainMenuPrompt = () => {
    return inquirer.prompt([
        {
            type: 'list',
            name: 'action',
            message: 'What would you like to do?',
            choices: ['View employees', 'Add employee', 'Update employee', 'Delete employee', 'Exit'],
        },
    ]);
};

export const employeePrompt = () => {
    return inquirer.prompt([
        {
            type: 'input',
            name: 'first_name',
            message: 'Enter employee first name',
        },
        {
            type: 'input',
            name: 'last_name',
            message: 'Enter employee last name',
        },
        {
            type: 'input',
            name: 'role_id',
            message: 'Enter employee role ID',
        },
        {
            type: 'input',
            name: 'manager_id',
            message: 'Enter employee manager ID',
        },
    ]);
};