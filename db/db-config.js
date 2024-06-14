//db-config.js
//mysql2 aplica el patron de diseño pooling para manejar las conexiones a la base de datos
const mysql = require("mysql2");

// Database config
module.exports.pool = mysql.createPool({
  host: process.env.MYSQL_HOST,
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASS,
  database: process.env.MYSQL_DATABASE,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});
