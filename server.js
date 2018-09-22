const express = require("express");
const app = express();
const fs = require("fs");
const hb = require("express-handlebars");
const bp = require("body-parser");

app.set("view engine", "handlebars");

app.engine(
    "handlebars",
    hb({
        defaultLayout: "main"
    })
);

app.use(express.static("./public"));

////// ROUTING ///////

app.get("/", (req, res) => {
    res.render("home", {
        layout: "main"
    });
});

app.get("/homepage", (req, res) => {
    res.render("homepage", {
        layout: "main"
    });
});

app.listen(process.env.PORT || 8080, () => "I am listening, Master");
