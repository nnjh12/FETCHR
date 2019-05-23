$(document).ready(function() {
  $("select").formSelect();

  var instance = M.FormSelect.getInstance(elem);
  instance.getSelectedValues();

  $("#breedSurvey").on("submit", function(event) {
    // Make sure to preventDefault on a submit event.
    event.preventDefault();

    var newSurvey = {
      name: $("#name").val(),
      zipcode: $("#zipcode").val(),
      question1:parseInt($("#1").val()),
      question2:parseInt($("#2").val()),
      question3:parseInt($("#3").val()),
      question4:parseInt($("#4").val()),
      question5:parseInt($("#5").val()),
      question6:parseInt($("#6").val()),
      question7:parseInt($("#7").val()),
      question8:parseInt($("#8").val()),
      question9:parseInt($("#9").val()),
      question10:parseInt($("#10").val()),
      question11:parseInt($("#11").val()),
      question12:parseInt($("#12").val()),
      question13:parseInt($("#13").val())
    };
    // Send the POST request.
    $.ajax("/movies", {
      type: "POST",
      data: newMovie
    }).then(function() {
      console.log("added new movie");
      // Reload the page to get the updated list
      location.reload();
    });
  });
});
