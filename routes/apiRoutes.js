var db = require("../models");

module.exports = function(app) {
  // Get specific users data
  app.get("/api/user/:userId", function(req, res) {
    db.User.findAll({ where: { id: req.params.userId } }).then(function(data) {
      res.json(data);
    });
  });

  // Get survey data of specific user
  app.get("/api/survey/:userId", function(req, res) {
    db.Survey.findAll({ where: { id: req.params.userId } }).then(function(
      data
    ) {
      res.json(data);
    });
  });

  // Post survey data
  app.post("/api/survey", function(req, res) {
    var surveyId;
    var createNewUser = {
      name: req.body.name,
      zipcode: req.body.zipcode
    };
    console.log(db.User);
    db.User.create(createNewUser).then(function(result) {
      // Send back the ID of the new user
      // console.log(result.id);
      var createSurvey = {
        question1: req.body.question1,
        question2: req.body.question2,
        question3: req.body.question3,
        question4: req.body.question4,
        question5: req.body.question5,
        question6: req.body.question6,
        question7: req.body.question7,
        question8: req.body.question8,
        question9: req.body.question9,
        question10: req.body.question10,
        question11: req.body.question11,
        question12: req.body.question12,
        UserId: result.id
      };
      db.Survey.create(createSurvey).then(function(result) {
        // Send back the ID of the new user
        surveyId = result.id;
        console.log(surveyId);
        res.json({ surveyId: surveyId });
      });
    });
  });

  // Get breed match results of specific user
  app.get("/api/breedmatch/:userId", function(req, res) {
    db.Breed_matche.findAll({ where: { id: req.params.userId } }).then(function(
      data
    ) {
      res.json(data);
    });
  });

  // Post breed match results
  app.post("/api/breedmatch", function(req, res) {
    db.Breed_matche.create(req.body).then(function(data) {
      res.json(data);
    });
  });

  // Get breed data
  // app.get("/api/breed", function(req, res) {
  //   db.Breed.findAll({
  //     include: [db.Attribute]
  //   });
  // });
};
