const spicedPg = require("spiced-pg");
var dbUrl =
    process.env.DATABASE_URL ||
    "postgres:postgres:postgres@localhost:8080/finalproject";

const db = spicedPg(dbUrl);

exports.saveUser = (firstname, lastname, email, hashedpassword) => {
    const q =
        "INSERT INTO users (firstname, lastname, email, hashedpassword) VALUES ($1, $2, $3, $4) RETURNING *;";
    return db.query(q, [
        firstname || null,
        lastname || null,
        email || null,
        hashedpassword || null
    ]);
};

exports.getUsers = function() {
    return db.query("SELECT * FROM users");
};
