// Module imports
const express = require("express");
const path = require('path');
const cors = require("cors");
require("dotenv").config();

// Let's refer to Express as app
const app = express();

// Static files
app.use(express.static(path.join(__dirname, 'public')));

// View engine setup
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Middlewares
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Route Imports
const userRouter = require("./routes/userRoutes");
const authenticationRouter = require("./routes/authenticationRoutes");
const articulosRouter = require("./routes/articulosRoutes");
const indexRouter = require("./routes/indexRoutes");

// Routes
app.use(userRouter);
app.use(authenticationRouter);
app.use(articulosRouter);
app.use(indexRouter);

const port = process.env.PORT;
app
  .listen(port, () => console.log(`Server is listening at http://localhost:${port}`))
  .on("error", (error) => console.error(error));