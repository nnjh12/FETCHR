var db = require("../models");

module.exports = function(app) {
  // Load index page

  app.get("/", function(req, res) {
    db.question
      .findAll({
        include: [db.choice]
      })
      .then(function(dbQuestions) {
        console.log(dbQuestions);
        console.log("____________________________________________________")
        console.log(dbQuestions[0].choices);
        res.render("index", {
          questionsAndChoices: dbQuestions
        });
      });
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
