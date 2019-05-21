$(document).ready(function() {
  $("select").formSelect();

  var instance = M.FormSelect.getInstance(elem);
  instance.getSelectedValues();
});
