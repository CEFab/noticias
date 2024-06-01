// indexController.js
const articulo = require('../models/articulosModel');

module.exports = {
  getAllArticulos: async (req, res) => {
    try {
      const articulos = await articulo.queryArticulos();
      res.render('index', { articulos });
    } catch (error) {
      console.error(error);
      res.status(500).send('Error al obtener los artículos');
    }
  },
};