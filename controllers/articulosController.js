const articulo = require("../models/articulosModel");

module.exports = {
  getAllArticulos: (req, res) => {
    articulo.queryArticulos().then((result) => {
      // Manipulate the queried data or just send it straight back to the frontend
      res.status(200).send(result);
    });
  },
  getVistaArticulos: (req, res) => {
    articulo.queryArticulos().then((result) => {
      // Manipulate the queried data or just send it straight back to the frontend
      res.render("articulos/index", { articulos: result });
    });
  },
};
