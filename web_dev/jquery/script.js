$(document).ready(function() {
  $('#bttn1').click(function(event) {
   alert("You clicked the button");
});
});

$(document).ready(function() {
  $('#ptag').hover(
    function() {
      $(this).css({ 'color': 'red', 'font-size': '150%' });
},
    function() {
      $(this).css('backgroundColor',"black");
    }
);
});
$(document).ready(function() {
  $('#ptag').hide(300).show(2000);
});

