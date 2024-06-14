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
router.get("/articulos/editar/:id", articulosController.vistaEditarArticulo); // Nueva ruta para editar
router.post("/articulos/editar/:id", upload.single('imagen'), articulosController.actualizarArticulo); // Nueva ruta para actualizar
router.delete("/articulos/eliminar/:id", articulosController.deleteArticulo);
router.get("/articulos/:id", articulosController.detalleArticulo);

module.exports = router;
