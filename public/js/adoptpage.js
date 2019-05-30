$(document).ready(function() {


$("#breedResults").click(function(event) {
  
    var surveyId= $(this).attr("data-survey")
    console.log(surveyId)
 
    window.location.href = `/breedresults/${surveyId}`;
  });
});


