const articulo = require('../models/articulosModel');

module.exports = {
    getAllArticulos: (req, res) => {
        console.log("/ root route hit 🙌");
        articulo.queryArticulos().then((result) => {
        // Manipulate the queried data or just send it straight back to the frontend
        res.status(200).send(result);
        });
    },
    };