$(document).ready(function() {
  $("select").formSelect();

  var instance = M.FormSelect.getInstance(elem);
  instance.getSelectedValues();

  $("#zipcode-submit").click(function(){
    $.post("/api/user/",
    {
        name: $("#name").val().trim(),
        zipcode: $("#zipcode").val().trim()
    },
    function(data, status){
        console.log(data)
    })
})
    $.get("/api/users/", function(data) {
        console.log(data)
        // var breedName;
        // var breedImgSrc;

        // for (var i = 0; i < 3; i++) {
        //     // key need to be updated
        //     breedName = data[i].key
        //     breedImgSrc = data[i].key

        //     $("#breedName" + (i + 1)).text(breedName)
        //     $("#breedImg" + (i + 1)).attr("src", breedImgSrc)
        // }
    })
    $('#submit').on('click', function (event) {
      event.preventDefault();
      $.post("/api/survey/",
      {
          question1: $('#environment1').val().trim(),
          question2: $('#environment2').val().trim(),
          question3: $('#environment3').val().trim(),
          question4: $('#people1').val().trim(),
          question5: $('#people2').val().trim(),
          question6: $('#activiy1').val().trim(),
          question7: $('#activity2').val().trim(),
          question8: $('#dogAttributes1').val().trim(),
          question9: $('#dogAttributes1').val().trim(),
          question10: $('#dogAttributes1').val().trim(),
          question11: $('#dogAttributes1').val().trim(),
          question12: $('#experience1').val().trim()
      },

      function(data){
          console.log(data)
      })

});
