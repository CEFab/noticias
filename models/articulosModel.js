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
  queryCrearArticulo: (articulo) => {
    console.log("/articulos database query made");
    return pool
      .promise()
      .query(
        "INSERT INTO articulos (titulo, autor, contenido, fecha, imagen) values (?, ?, ?, ?, ?)",
        [
          articulo.titulo,
          articulo.autor,
          articulo.contenido,
          articulo.fecha,
          articulo.imagen,
        ]
      )
      .catch((err) => console.log(err));
  },
  deleteArticulo: (id) => {
    console.log("/articulos database query made");
    return pool
      .promise()
      .query("DELETE FROM articulos WHERE id = ?", [id])
      .catch((err) => console.log(err));
  },
  getArticuloById: (id) => {
    console.log("/articulos/:id database query made");
    return pool
      .promise()
      .query("SELECT * FROM articulos WHERE id = ?", [id])
      .then(([results]) => results[0])
      .catch((err) => console.log(err));
  },
  updateArticulo: (id, articulo) => {
    console.log("/articulos/update/:id database query made");
    return pool
      .promise()
      .query(
        "UPDATE articulos SET titulo = ?, autor = ?, contenido = ?, imagen = ? WHERE id = ?",
        [
          articulo.titulo,
          articulo.autor,
          articulo.contenido,
          articulo.imagen,
          id
        ]
      )
      .catch((err) => console.log(err));
  }
};
