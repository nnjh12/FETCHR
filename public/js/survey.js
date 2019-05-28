$(document).ready(function() {
  $("select").formSelect();

  // var instance = M.FormSelect.getInstance(elem);
  // instance.getSelectedValues();

  $("#submitSurvey").click(function(event) {
    // Make sure to preventDefault on a submit event.
    event.preventDefault();

    // var instance = M.FormSelect.getInstance($('#breedSurvey'));
    // var _d = instance.getSelectedValues();
    console.log("I have been clicked");

    var breedResults = [1, 3, 5];

    var newSurvey = {
      name: $("#name").val(),
      zipcode: $("#zipcode").val(),
      question1: parseInt($("#1").val()),
      question2: parseInt($("#2").val()),
      question3: parseInt($("#3").val()),
      question4: parseInt($("#4").val()),
      question5: parseInt($("#5").val()),
      question6: parseInt($("#6").val()),
      question7: parseInt($("#7").val()),
      question8: parseInt($("#8").val()),
      question9: parseInt($("#9").val()),
      question10: parseInt($("#10").val()),
      question11: parseInt($("#11").val()),
      question12: parseInt($("#12").val()),
      question13: parseInt($("#13").val())
    };

    // add the breed results in object
    for (var i = 0; i < breedResults.length; i++) {
      newSurvey["breed" + (i + 1)] = breedResults[i];
    }

    console.log(newSurvey);
    // Send the POST request
    $.ajax("/api/survey", {
      type: "POST",
      data: newSurvey
    }).then(function() {
      console.log("added new user and survey");
      // Reload the page to get the updated list
      // res.redirect("/");
    });

    // for (var i = 0; i < breedResults.length; i++) {
    //   var newData = {
    //     user_id: userId,
    //     survey_id: surveyId,
    //     BreedId: breedResults[i]
    //   };
    //   $.ajax("/api/breedresult", {
    //     type: "POST",
    //     data: newData
    //   }).then(function() {
    //     console.log("added new breed results");
    //   });
    //   // .then(function() {
    //   //   window.location.href = "/breedresults";
    //   // });
    // }
  });
});
