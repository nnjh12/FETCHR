var db = require("../models");
var petfinder = require("./petfinderRoutes");
var breedResults = require("../public/js/breedresults");

module.exports = function (app) {
  // Load index page

  app.get("/", function (req, res) {
    db.question
      .findAll({
        include: [db.choice]
      })
      .then(function(dbQuestions) {
        // console.log(dbQuestions);
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
    db.breed
      .findAll({
        where: {
          id: breedResults
        },
        include: [db.attribute]
      })
      .then(function(data) {
        // console.log(data)
        res.render("breedresults", { returnedArray: data });
      });
  });

  // Load adopt results page
  app.get("/adoptresults", function (req, res) {
    // petfinderRequest parameters are hardcoded for now, but will take in survey data.
    // var dogs = petfinder.petfinderRequest();
    // console.log(dogs);
    // console.log(petfinder.petfinderRequest());
    petfinder.petfinderRequest(19125, 5, "beagle").then(function (res) {

      class Dog {
        constructor(name, age, photo, gender, status, website, phone) {
          this.name = name;
          this.age = age;
          this.photo = photo;
          this.gender = gender;
          this.status = status;
          this.website = website;
          this.phone = phone;
        }
      }

      var responseDogs = [];

      for (let i = 0; i < 10; i++) {
        responseDogs.push(res.animals[i]);
      }

      console.log(responseDogs);


      var hbsDogs = {
        dogs: []
      }

      console.log(hbsDogs.dogs);
      
      for (var i = 0; i < 10; i++) {
        hbsDogs.dogs.push(new Dog(res.animals[i].name, res.animals[i].age, res.animals[i].photos[0].small, res.animals[i].gender, res.animals[i].status, res.animals[i].url, res.animals[i].contact.phone))
      }
      
      console.log(hbsDogs.dogs);

      
    })
    res.render("adopt");


  });

  // Render 404 page for any unmatched routes
  app.get("*", function (req, res) {
    res.render("404");
  });
};
