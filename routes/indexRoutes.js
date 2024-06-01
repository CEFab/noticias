// indexRoutes.js

const express = require("express");
const router = express.Router();
const indexController = require('../controllers/indexController');

// Index Endpoint
router.get("/", indexController.getAllArticulos);

module.exports = router;