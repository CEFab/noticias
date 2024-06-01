// articulosModel.js
const { pool } = require("../db/db-config");
module.exports = {
  queryArticulos: () => {
    console.log("/api/articulos database query made");
    return pool
      .promise()
      .query("SELECT * FROM articulos")
      .then(([results]) => results)
      .catch((err) => console.log(err));
  },
};
