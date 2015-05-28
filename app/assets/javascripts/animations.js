$(document).ready(function(){
  console.log('wat');
  // transition horror background slide in
  $('body').addClass('horrify');

  // fade in heart
  $('.heart').addClass('fade-in-slow');

  // fade in stars
  $('#starry-wrapper').toggleClass('cover');
  $('#starry-wrapper').addClass('fade-in-fast');
});
