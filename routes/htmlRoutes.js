var db = require("../models");

module.exports = function(app) {
  // Load index page

  app.get("/", function(req, res) {
    // db.Question.findAll({}).then(function(dbQuestions) {
    //   res.render("index", {
    //     question: dbQuestions
    //   });
    // db.question.findAll({}).then(function(dbQuestions) {
    //   console.log(dbQuestions);
    //   res.render("index", {
    //     questions: dbQuestions
    //   });
    // db.choice.findAll({}).then(function(dbChoices) {
    //   console.log(dbQuestions);
    //   res.render("index", {
    //     choices: dbChoices
    //   });  
    // });
    db.question.hasMany(db.choice, { as: "choices", foreignKey: "id" });
    db.choice.belongsTo(db.question, { foreignKey: "id" });
    db.choice
      .findAll({ include: [db.question] })
      .then(function(dbQuestionAndChoice) {
        console.log(dbQuestionAndChoice);
        res.render("index", {
          questionAndChoice: dbQuestionAndChoice
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
