var db = require("../models");

module.exports = function(app) {
  // Get all the users data
  app.get("/api/user", function(req, res) {
    db.User.findAll().then(function(data) {
      res.json(data);
    });
  });

  // Get specific users data
  app.get("/api/user/:userName", function(req, res) {
    db.User.findAll({ where: { id: req.params.userName } }).then(function(
      data
    ) {
      res.json(data);
    });
  });

  // Post users data
  app.post("/api/user", function(req, res) {
    db.User.create(req.body).then(function(data) {
      res.json(data);
    });
  });

  // Get survey data of specific user
  app.get("/api/survey/:userId", function(req, res) {
    db.Survey.findAll({
      where: { id: req.params.userId },
      include: [db.User]
    }).then(function(data) {
      res.json(data);
    });
  });

  // Post survey data
  app.post("/api/survey", function(req, res) {
    console.log(req.body);
    var createNewUser = {
      name: req.body.name,
      zipcode: req.body.zipcode
    };
    var userId;
    var surveyId;
    console.log(db.User);
    db.User.create(createNewUser).then(function(result) {
      // Send back the ID of the new user
      userId = result.id;
      console.log(result.id);
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
        question13: req.body.question13,
        UserId: result.id
      };
      db.Survey.create(createSurvey).then(function(result) {
        // Send back the ID of the new user
        surveyId = result.id;
        var breedMatchData = {
          UserId: userId,
          SurveyId: surveyId,
          BreedId: ""
        };
        for (var i = 0; i < Object.keys(req.body).length - 15; i++) {
          breedMatchData["BreedId"] = req.body["breed" + (i + 1)];
          console.log(breedMatchData);
          db.BreedMatch.create(breedMatchData).then(function(result) {
            console.log("breed match post result: " + result);
          });
        }
      });
    });
    res.end();
    // res.redirect(307, "/api/breedresult/" + userId);
    // res.json({ userId: userId, surveyId: surveyId });
  });

  // Get breed match results of specific user
  app.get("/api/breedresult/:userId", function(req, res) {
    db.BreedMatch.findAll({
      include: [db.User, db.Survey, db.Breed]
    }).then(function(data) {
      res.json(data);
    });
  });

  // Post breed match results
  app.post("/api/breedresult", function(req, res) {
    db.BreedMatch.create(req.body).then(function(data) {
      res.json(data);
    });
  });

  // Get breed data
  app.get("/api/breed", function(req, res) {
    db.Breed.findAll({
      include: [db.Attribute]
    }).then(function(data) {
      res.json(data);
    });
  });
};
