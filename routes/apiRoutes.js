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
    var createNewUser = {
      name: req.body.name,
      zipcode: req.body.zipcode
    };
    console.log(db.User);
    db.User.create(createNewUser).then(function(result) {
      // Send back the ID of the new user
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
        UserId: result.id
      };
      db.Survey.create(createSurvey).then(function(result) {
        // Send back the ID of the new user
        var surveyId = result.insertId;
      });
    });

    res.json({ userId: userId, surveyId: surveyId });
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
  app.get("/api/breed", function(req, res) {
    db.Breed.findAll({
      include: [db.Attribute]
    }).then(function(data){
      //TODO:SELECT * FROM Breeds table
var doggos = data;

//TODO: Pass in the survey id from the on click
var survey = {
  id:1,
  userId:1,
  question1:1,
  question2:2,
  question3:1,
  question4:5,
  question5:1,
  question6:3,
  question7:1,
  question8:2,
  question9:1,
  question10:3,
  question11:5,  
  question12:5
};

var questionToAttributeMap = {
question1: 'Adapts Well to Apartment Living',
question5: 'Good For Novice Owners',
question2: 'Sensitivity Level',
question6: 'Tolerates Being Alone',
question7: 'Affectionate with Family',
question3: 'Incredibly Kid Friendly Dogs',
question4: 'Dog Friendly',
question12: 'Amount Of Shedding',
question11: 'Size',
question10: 'Easy To Train',
question8: 'Energy Level',
question9: 'Exercise Needs'
}
var perfectDog = {}
var mapKeys = Object.keys(questionToAttributeMap);
for(var i=0; i< mapKeys.length; i++){
  var questionString = mapKeys[i]; // ie "question9"
  var attributeString = questionToAttributeMap[mapKeys[i]].replace(/ /g,"_").toLowerCase(); // ie 'excercise_needs'
  var valueOfAttr = survey[questionString];
  perfectDog[attributeString] = valueOfAttr;
}
// stub 
function kasieDistance(dog1, dog2){
  return parseFloat((Math.random() * 10).toFixed(2))
}
// ... dog143] SELECT * FROM breeds including attrs
for(var z=0; z < doggos.length; z++){  
// format doggos to make them easy to compare
for(i=0; i< doggos[z].Attributes.length; i++){
  doggos[z][doggos[z].Attributes[i].attribute.replace(/ /g,"_").toLowerCase()] = doggos[z].Attributes[i].score;
}
}

// this gives you the array of dogs ordered by score
function dogsInOrder(doggos, perfectDog){
    var orderedDoggos =[]; 
      for(i=0; i < doggos.length; i++){
        var score = kasieDistance(doggos[i], perfectDog);
        orderedDoggos.push({breed: doggos[i].breed_name, score: score})
      }
  
    console.log(orderedDoggos)
}

dogsInOrder(doggos, perfectDog);
  
      
    }).then(function(data) {
      res.json(data);
    });
  });
};
});
});
