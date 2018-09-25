const express = require("express");
const app = express();
const bp = require("body-parser");
const db = require("./SQL/db.js");
const cookieSession = require("cookie-session");
const bcrypt = require("./bcrypt");
const csurf = require("csurf");

const hb = require("express-handlebars");
app.engine("handlebars", hb());
app.set("view engine", "handlebars");

app.use(express.static("./public"));

app.use(
    bp.urlencoded({
        extended: false
    })
);
app.use(require("cookie-parser")());
app.use(
    cookieSession({
        secret: `Döner Kebab`,
        maxAge: 1000 * 60 * 60 * 24 * 14
    })
);

app.use(csurf()); /// have to be after cookie session

app.use((req, res, next) => {
    res.locals.csrfToken = req.csrfToken(); // locals is an empty object
    next();
});

////// ROUTING ///////
//////////Registration route////////
app.get("/", (req, res) => {
    res.render("home", {
        layout: "main"
    });
});
app.post("/", (req, res) => {
    let { firstname, lastname, email, password } = req.body;
    bcrypt.hashPass(password).then(function(hashedpassword) {
        db.saveUser(firstname, lastname, email, hashedpassword)
            .then(function(response) {
                req.session.user = {
                    firstname,
                    lastname,
                    userId: response.rows[0].id
                };
                res.redirect("/homepage");
            })
            .catch(function(error) {
                console.log("error", error);
                res.render("/home", {
                    layout: "main",
                    error: true
                });
            });
    });
});
/////////////////////////////////////////////////////////////////////////////////

app.get("/homepage", (req, res) => {
    res.render("homepage", {
        layout: "main"
    });
});

app.get("/player", (req, res) => {
    res.render("player", {
        layout: "main"
    });
});
///////////login///////////////////////////////////////////////////////////////
app.get("/login", (req, res) => {
    res.render("login", {
        layout: "main"
    });
});

app.post("/login", (req, res) => {
    let { email, password } = req.body;
    db.getUsers()
        .then(response => {
            response.rows.forEach(row => {
                if (email == row.email) {
                    bcrypt
                        .checkPass(password, row.hashedpassword)
                        .then(doesMatch => {
                            if (doesMatch) {
                                req.session.user = {
                                    firstname: row.firstname,
                                    lastname: row.lastname,
                                    userId: row.id
                                };
                                res.redirect("/homepage");
                            }
                        });
                }
            });
        })
        .catch(error => {
            res.render("/home", {
                layout: "main"
            });
        });
});
///////////////////////////////fixtures page///////////////////////////////////

app.get("/fixtures", (req, res) => {
    res.render("fixtures", {
        layout: "main"
    });
});

///////////////////////players profile/////////////////////////////////////////

app.get("/players", (req, res) => {
    console.log("req:", req.body);
    db.getPlayers().then(results => {
        console.log("results:", results.rows);
        res.render("players", {
            layout: "main",
            players: results.rows
        });
    });
});

app.get("/player/:playerId", (req, res) => {
    db.getPlayerInfoById(req.params.playerId).then(results => {
        console.log("results:", results);
        res.render("player", {
            layout: "main",
            playerInfo: results.rows[0]
        }).catch(error => {
            console.log("Error in get player:", error);
        });
    });
});
app.listen(process.env.PORT || 8080, () => "I am listening, Master");
