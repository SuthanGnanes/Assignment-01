const mysql = require("mysql2/promise");

const pool = mysql.createPool({
    user: "root",
    password: "Suthan@22101994",
    host: "localhost",
    port: 3306,
    database: "bankemployee"
});

module.exports = pool

