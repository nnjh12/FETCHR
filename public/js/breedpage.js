$(document).ready(function() {

  $(".attributeAndScore").each(function() {
    var attrScore = parseInt($(this).attr("data-score"));
    var topFourAttr =[]
    if (attrScore < 4) {
      $(this).hide();
    }
    var attributeElementCount = $(this "li").length;
    if (attributeElementCount > 4){

    }
  });

  var attributeElementCount = $(". li").length;

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
});
