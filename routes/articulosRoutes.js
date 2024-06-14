// articulosRoutes.js
const express = require("express");
const router = express.Router();
const articulosController = require("../controllers/articulosController");
const upload = require('../config/multerConfig'); // Ajusta según tu estructura de archivos

// Articulos Endpoint
router.get("/api/articulos", articulosController.getAllArticulos);
router.get("/articulos", articulosController.getVistaArticulos);
router.get("/articulos/crear", articulosController.vistaCrearArticulo);
router.post("/articulos/crear", upload.single('imagen'), articulosController.crearArticulo);
router.post("/articulos/eliminar/:id", articulosController.deleteArticulo);  // Cambiado a POST

module.exports = router;

