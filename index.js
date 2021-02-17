const express  = require ("express");
const app = express();
const cors = require("cors");
const pool = require("./db");

//middlewear
app.use(cors());
app.use(express.json());

//routes
app.listen(5000, ()=> {
    console.log("Server is running on port 5000");
});

//get all data

app.get("/employees", async (req, res) => {
    try {
        const employees = await pool.query("SELECT employee.emp_id, employee.emp_name, employee.emp_email, employee.emp_photo, bank_branch.branch_name, bank.bank_name FROM employee, bank_branch, bank WHERE bank_branch.branch_id = employee.branch_id AND bank.bank_id = bank_branch.bank_id");
        res.json(employees);
        }
        catch (err){
            console.error(err.message);
        }
})



