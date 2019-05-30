$(document).ready(function() {

  $(".stars").each(function () {
    var starCount = parseInt($(this).attr("data-score"));
    
    //if statement to determine stars
    switch (starCount) {
      case 5:
        $(this).attr("src", "../images/stars_05.png");
        break;
      case 4:
        $(this).attr("src", "../images/stars_04.png");
        console.log("4 stars");
        break;
      case 3:
        $(this).attr("src", "../images/stars_03.png");
        break;
      case 2:
        $(this).attr("src", "../images/stars_02.png");
        break;
      case 1:
        $(this).attr("src", "../images/stars_01.png");
        break;
    }
  });

$(".findButton").click(function(event) {
  console.log("find has been been clicked")
    var breed = $(this).attr("data-breed")
    console.log(breed)
    var userId= $(this).attr("data-user")
    console.log(userId)
  

  
  // Send the POST request
  // $.ajax("/adoptresults", {
  //   type: "GET",
  //   data: findSubmit
  // }).then(function(id) {
  //   console.log(id);
    window.location.href = `/adoptresults/${breed}/${userId}`;
  });
});


