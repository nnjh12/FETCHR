var db = require("../models");
var petfinder = require("./petfinderRoutes");
var breedResults = require("../public/js/breedresults");

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
        constructor(name, age, photo, gender, status, website, phone, address, city, state) {
          this.name = name;
          this.age = age;
          this.photo = photo;
          this.gender = gender;
          this.status = status;
          this.website = website;
          this.phone = phone;
          this.address = address;
          this.city = city;
          this.state = state;
        }
      }

      var responseDogs = [];

      for (let i = 0; i < 10; i++) {
        responseDogs.push(res.animals[i]);
      }

      // console.log(responseDogs);


      

      // console.log(hbsDogs.dogs);
      
      for (var i = 0; i < 10; i++) {
        hbsDogs.dogs.push(new Dog(res.animals[i].name, res.animals[i].age, res.animals[i].photos[0].medium, res.animals[i].gender, res.animals[i].status, res.animals[i].url, res.animals[i].contact.phone, res.animals[i].contact.address.address1, res.animals[i].contact.address.city, res.animals[i].contact.address.state))
      }
      
      console.log(hbsDogs.dogs, "Dogs");
      response.render("adopt", hbsDogs);
      
    })
    // console.log(hbsDogs, "after")


  });

  // Render 404 page for any unmatched routes
  app.get("*", function (req, res) {
    res.render("404");
  });
};
