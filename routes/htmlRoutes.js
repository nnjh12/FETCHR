var express = require("express");

var router = express.Router();

// Import the model (cat.js) to use its database functions.
var questions = require("../models/questions");
var choices = require("../models/choices");
var user = require("../models/user");
var surveyAnswers = require("../models/surveyAnswers");
var breed = require("../models/breed");
var breedMatch = require("../models/breedMatch");

module.exports = function(app) {
  // Load index page

  router.get("/", function(req, res) {
    var allQuestions;
    var allChoices;
    questions.all(function(data) {
      allQuestions = data;
    });
    choices.all(function(data) {
      allChoices = data;
    });
    var hbsObject = {
      allQuestions: allQuestions,
      allChoices: allChoices
    };
    res.render("index", hbsObject);
  });

  // app.get("/", function(req, res) {
  //   res.sendFile(path.join(__dirname, "../public/index.html"));
  // });

//   // Load breed results page
//   app.get("/breedresults", function(req, res) {
//     res.sendFile(path.join(__dirname, "../public/breedresults.html"));
//   });

//   // Load adopt results page
//   app.get("/adoptresults", function(req, res) {
//     res.sendFile(path.join(__dirname, "../public/adoptresults.html"));
//   });

//   // Render 404 page for any unmatched routes
//   app.get("*", function(req, res) {
//     res.render("404");
//   });
};
