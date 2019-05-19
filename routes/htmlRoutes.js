var express = require("express");

var router = express.Router();

// Import the model (cat.js) to use its database functions.
var survey = require("../models/survey");
var survey = require("../models/survey");
var survey = require("../models/survey");
var survey = require("../models/survey");
var survey = require("../models/survey");

module.exports = function(app) {
  // Load index page
  app.get("/", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/index.html"));
  });

  // Load breed results page
  app.get("/breedresults", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/breedresults.html"));
  });

  // Load adopt results page
  app.get("/adoptresults", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/adoptresults.html"));
  });

  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
};
