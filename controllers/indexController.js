// indexController.js
const articulo = require('../models/articulosModel');

module.exports = {
  getAllArticulos: async (req, res) => {
    try {
      const articulos = await articulo.queryArticulos();
      res.render('home/index', { articulos });
    } catch (error) {
      console.error(error);
      res.status(500).send('Error al obtener los artículos');
    }
  },
  acercaDe : (req, res) => {
    res.render('home/acercade');
  },
  contacto : (req, res) => {
    res.render('home/contacto');
  }
};