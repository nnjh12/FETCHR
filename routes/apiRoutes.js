var db = require("../models");

module.exports = function(app) {
  // Get specific users data
  app.get("/api/user/:userId", function(req, res) {
    db.user.findAll({ where: { id: req.params.userId } }).then(function(data) {
      res.json(data);
    });
  });

  // Post users data
  app.post("/api/user", function(req, res) {
    db.user.create(req.body).then(function(data) {
      res.json(data);
    });
  });

  // Get survey data of specific user
  app.get("/api/survey/:userId", function(req, res) {
    db.survey
      .findAll({ where: { id: req.params.userId } })
      .then(function(data) {
        res.json(data);
      });
  });

  // Post survey data
  app.post("/api/survey", function(req, res) {
    db.user.create(
      ["name", "zipcode"],
      [req.body.name, req.body.zipcode],
      function(result) {
        // Send back the ID of the new user
        res.json({ id: result.insertId });
      }
    );

    db.survey.create(
      [
        "question1",
        "question2",
        "question3",
        "question4",
        "question5",
        "question6",
        "question7",
        "question8",
        "question9",
        "question10",
        "question11",
        "question12",
        "question13"
      ],
      [
        req.body.question1,
        req.body.question2,
        req.body.question3,
        req.body.question4,
        req.body.question5,
        req.body.question6,
        req.body.question7,
        req.body.question8,
        req.body.question9,
        req.body.question10,
        req.body.question11,
        req.body.question12,
        req.body.question13
      ],
      function(result) {
        // Send back the ID of the new user
        res.json({ id: result.insertId });
      }
    );
  });

  // Get breed match results of specific user
  app.get("/api/breedmatch/:userId", function(req, res) {
    db.breed_matche
      .findAll({ where: { id: req.params.userId } })
      .then(function(data) {
        res.json(data);
      });
  });

  // Post breed match results
  app.post("/api/breedmatch", function(req, res) {
    db.breed_matche.create(req.body).then(function(data) {
      res.json(data);
    });
  });

  // Get breed data
  app.get("/api/breed", function(req, res) {
    db.breed
      .findAll({
        include: [db.attribute]
      })
      .then(function(data) {
        res.json(data);
      });
  });
};
