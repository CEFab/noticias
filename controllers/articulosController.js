const articulo = require("../models/articulosModel");
const path = require('path');

module.exports = {
  getAllArticulos: (req, res) => {
    articulo.queryArticulos().then((result) => {
      res.status(200).send(result);
    });
  },
  getVistaArticulos: (req, res) => {
    articulo.queryArticulos().then((result) => {
      res.render("articulos/index", { articulos: result });
    });
  },
  vistaCrearArticulo: (req, res) => {
    res.render("articulos/create");
  },
  crearArticulo: (req, res) => {
    const { titulo, autor, contenido } = req.body;
    const fecha = new Date().toISOString().slice(0, 19).replace('T', ' ');
    const imagen = req.file ? `/images/${req.file.filename}` : null;

    if (!titulo || !autor || !contenido) {
      return res.status(400).send({ error: "Todos los campos son requeridos" });
    }

    const nuevoArticulo = {
      titulo,
      autor,
      contenido,
      fecha,
      imagen,
    };

    articulo.queryCrearArticulo(nuevoArticulo).then((result) => {
      res.status(201).send(result);
    }).catch((err) => {
      console.log(err);
      res.status(500).send({ error: "Error al crear el artículo" });
    });
  },
};
