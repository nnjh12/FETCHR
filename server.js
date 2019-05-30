require("dotenv").config();
var express = require("express");
var exphbs = require("express-handlebars");
var db = require("./models");
const keys = require("./passport/keys")
const cookieSession = require("cookie-session");
const passport = require("passport");
var app = express();

app.use(passport.initialize());
app.use(passport.session());

var PORT = process.env.PORT || 3000;

//set up view engine
app.use(cookieSession({
  maxAge: 24 * 60 * 60 * 1000,
  keys: [keys.session.cookieKey]
}));

app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(express.static("public"));
// Middleware
const passportSetup = require("./passport/passport-setup");
const authRoutes = require("./routes/auth-routes");
const profileRoutes = require("./routes/profile-routes");

app.use("/auth", authRoutes);
app.use("/profile", profileRoutes);
var session = require("express-session"),
    bodyParser = require("body-parser");

app.use(session({ secret: "cats" }));
app.use(bodyParser.urlencoded({ extended: false }));


// Handlebars
app.engine(
  "handlebars",
  exphbs({
    defaultLayout: "main"
  })
);
app.set("view engine", "handlebars");

// Routes
require("./routes/apiRoutes")(app);
require("./routes/htmlRoutes")(app);



var syncOptions = { force: false };

// If running a test, set syncOptions.force to true
// clearing the `testdb`
if (process.env.NODE_ENV === "test") {
  syncOptions.force = true;
}

// Starting the server, syncing our models ------------------------------------/
db.sequelize.sync(syncOptions).then(function() {
  app.listen(PORT, function() {
    console.log(
      "==> 🌎  Listening on port %s. Visit http://localhost:%s/ in your browser.",
      PORT,
      PORT
    );
  });
});

module.exports = app;
