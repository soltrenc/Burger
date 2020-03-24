const express = require("express");
const mysql = require("mysql");
const PORT = process.env.PORT || 8080;
const app = express();

app.use(express.static("public"));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

var routes = require("./controllers/burgers_controller.js");
app.use(routes);

var exphbs = require("express-handlebars");
app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");


app.listen(PORT, function () {
    console.log("App now listening at localhost:" + PORT);
});
