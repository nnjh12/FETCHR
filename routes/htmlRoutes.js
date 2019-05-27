var db = require("../models");
var _ = require("underscore");
var petfinder = require("./petfinderRoutes");
var breedResults = require("../public/js/breedresults");
// NPM package to convert html entities for special characters (', #, < , etc.) into the actual characters.
const Entities = require('html-entities').XmlEntities;
const entities = new Entities();

module.exports = function (app) {
  // Load index page

  app.get("/", function (req, res) {
    db.Question
      .findAll({
        include: [db.Choice]
      })
      .then(function(dbQuestions) {
        console.log(dbQuestions);
        // console.log("____________________________________________________")
        // console.log(dbQuestions[0].choices);

        res.render("index", {
          questionsAndChoices: dbQuestions
        });
      });
  });

  // Load breed results page
  app.get("/breedresults", function(req, res) {
    console.log(breedResults);
    db.Breed
      .findAll({
        where: {
          id: breedResults
        },
        include: [db.Attribute]
      })
      .then(function(data) {
        // console.log(data)
        res.render("breedresults", { returnedArray: data });
      });
  });

  // Load adopt results page
  app.get("/adoptresults", function (req, response) {
    // petfinderRequest parameters are hardcoded for now, but will take in survey data.
    // var dogs = petfinder.petfinderRequest();
    // console.log(dogs);
    // console.log(petfinder.petfinderRequest());
    var hbsDogs = {
      dogs: []
    }

    petfinder.petfinderRequest(19125, 5, "beagle").then(function (res) {

      class Dog {
        constructor(name, age, photo, gender, status, website, phone, address, city, state, description) {
          this.name = entities.decode(name);
          this.age = age;
          this.photo = photo;
          this.gender = gender;
          this.status = status;
          this.website = website;
          this.phone = phone;
          this.address = address;
          this.city = city;
          this.state = state;
          this.description = entities.decode(description);
        }
      }

      var responseDogs = [];

      for (let i = 0; i < 12; i++) {
        responseDogs.push(res.animals[i]);
      }

      console.log(responseDogs);


      

      // console.log(hbsDogs.dogs);
      
      for (var i = 0; i < responseDogs.length; i++) {
        hbsDogs.dogs.push(new Dog(res.animals[i].name, res.animals[i].age, res.animals[i].photos[0].medium, res.animals[i].gender, res.animals[i].status, res.animals[i].url, res.animals[i].contact.phone, res.animals[i].contact.address.address1, res.animals[i].contact.address.city, res.animals[i].contact.address.state, res.animals[i].description))
      }
      
      // console.log(hbsDogs.dogs, "Dogs");
      response.render("adopt", hbsDogs);
      
    })
    // console.log(hbsDogs, "after")


  });

  

app.get("/breedresults/:id", function(req, res) {
  var doggos;
  var survey;
  var allDogs = db.Breed
      .findAll({
        include: [db.Attribute]
      });
  
 
//      });
//TODO: Pass in the survey id from the on click

var userSurvey = db.Survey
  .findOne({
    where: {
      id: req.params.id
    }
  });

  Promise
    .all([allDogs, userSurvey])
    .then(responses => {

doggos = responses[0];
survey = responses[1];

console.log(doggos);
console.log(survey);

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

var dogAttributes = [];

var perfectDog = {}
var mapKeys = Object.keys(questionToAttributeMap);
for(var i=0; i< mapKeys.length; i++){
  var questionString = mapKeys[i]; // ie "question9"
  var attributeString = questionToAttributeMap[mapKeys[i]].replace(/ /g,"_").toLowerCase(); // ie 'excercise_needs'
  var valueOfAttr = survey[questionString];
  dogAttributes.push(attributeString);
  perfectDog[attributeString] = valueOfAttr;
}
// stub 
function dogScoreComparison(dog1, dog2){
  var totalDiff = 0;
  for (var i =0; i <dogAttributes.length; i++){
    var dogDiff = Math.abs(dog1[dogAttributes[i]] - dog2[dogAttributes[i]])
    dogDiff = Math.pow(dogDiff,2)
    totalDiff += dogDiff
  }
  return Math.sqrt(totalDiff);
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
        var score = dogScoreComparison(doggos[i], perfectDog);
        orderedDoggos.push({breed: doggos[i].breed_name, score: score})
      }
  
      var allSortedDogs =  _.sortBy( orderedDoggos, 'score' );
      console.log(allSortedDogs)
      var firstSixDogs = [];

      for (var i = 0; i <6; i++){
        // firstSixDogs.push({breed_name: allSortedDogs[i].breed});
        firstSixDogs.push(allSortedDogs[i].breed)
      }
      return firstSixDogs;
}

var matchedDogs = dogsInOrder(doggos, perfectDog);
db.Breed
.findAll({
  where: {
    breed_name:{
      $in: matchedDogs
    } 
  },
  include: [db.Attribute]
})
.then(function(data) {
  console.log(data)
  res.render("breedresults", { returnedArray: data });
}); 
});

});

// Render 404 page for any unmatched routes
app.get("*", function (req, res) {
  res.render("404");
});







};
