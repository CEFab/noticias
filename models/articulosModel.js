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
    // <!-- CREATE TABLE `articulos` (
    //   `id` int NOT NULL AUTO_INCREMENT,
    //   `titulo` varchar(100) DEFAULT NULL,
    //   `autor` varchar(100) DEFAULT NULL,
    //   `contenido` text,
    //   `fecha` datetime DEFAULT NULL,
    //   `imagen` varchar(100) DEFAULT NULL,
    //   PRIMARY KEY (`id`)
    // )  -->
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
};
