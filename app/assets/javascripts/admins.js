var ready;
ready = function() {
  console.log("test");
  $(".user-info").on("click", function(e) {
    $(this).closest('.user-list').find('.listing-expand').fadeToggle();
  });
};

$(document).ready(ready);
