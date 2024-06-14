// articulosRoutes.js
const express = require("express");
const router = express.Router();
const articulosController = require("../controllers/articulosController");

// Articulos Endpoint
router.get("/api/articulos", articulosController.getAllArticulos);
router.get("/articulos", articulosController.getVistaArticulos);

module.exports = router;