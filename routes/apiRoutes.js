var db = require("../models");

module.exports = function (app) {
  // Get specific users data
  app.get("/api/user/:userId", function (req, res) {
    db.user.findAll({ where: { id: req.params.userId } }).then(function (data) {
      res.json(data);
    });
  });

  // Post users data
  app.post("/api/user", function (req, res) {
    db.user.create(req.body).then(function (data) {
      res.json(data);
    });
  });

  // Get survey data of specific user
  app.get("/api/survey/:userId", function (req, res) {
    db.survey.findAll({ where: { id: req.params.userId } }).then(function (data) {
      res.json(data);
    });
  });

  // Post survey data
  app.post("/api/survey", function (req, res) {
    db.survey.create(req.body).then(function (data) {
      res.json(data);
    });
  });

  // Get breed results data of specific user
  app.get("/api/breedmatch/:userId", function (req, res) {
    db.breedMatch.findAll({ where: { id: req.params.userId } }).then(function (data) {
      res.json(data);
    });
  });

  // Post survey data
  app.post("/api/survey", function (req, res) {
    db.survey.create(req.body).then(function (data) {
      res.json(data);
    });
  });
};
