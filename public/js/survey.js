$(document).ready(function() {
  $("select").formSelect();
  $("google-oauth").click(function(event){
    
  })

  // var instance = M.FormSelect.getInstance(elem);
  // instance.getSelectedValues();

  $("#submitSurvey").click(function(event) {
    // Make sure to preventDefault on a submit event.
    event.preventDefault();

    // var instance = M.FormSelect.getInstance($('#breedSurvey'));
    // var _d = instance.getSelectedValues();
    console.log("I have been clicked");

    
// Get values from survey form
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

    console.log(newSurvey);
    // Push values to an array we can iterate through.
    var surveyValues = [];
    var validValues = [];
    surveyValues.push(newSurvey.question1, newSurvey.question2, newSurvey.question3, newSurvey.question4, newSurvey.question5, newSurvey.question6, newSurvey.question7, newSurvey.question8, newSurvey.question9, newSurvey.question10, newSurvey.question11, newSurvey.question12);

    for (let i = 0; i < surveyValues.length; i++) {
      if (!isNaN(surveyValues[i])) {
        validValues.push(surveyValues[i])
      }
    }
    console.log(validValues);
    console.log(surveyValues);
   
    if (validValues.length === surveyValues.length) {
      console.log('hi');
      
      
      // Send the POST request
      $.ajax("/api/survey", {
        type: "POST",
        data: newSurvey
      }).then(function(id) {
        console.log(id);
        window.location.href = `/breedresults/${id.surveyId}`;
      });
    } else {
      console.log('missing answer');
      $('#missing-question-text').append('Please make sure you answered all the questions!')
    }
    
      
  });

});
