// indexRoutes.js

const express = require("express");
const router = express.Router();
const indexController = require('../controllers/indexController');

// Index Endpoint
router.get("/", indexController.getAllArticulos);
router.get("/acercade", indexController.acercaDe);
router.get("/contacto", indexController.contacto);

module.exports = router;