  function rect(){
  $('.form_wrapper').animate({
    marginTop: '-=10px'
  },800).animate({
    marginTop: '+=10px'
  },800);
  setTimeout('rect()',1600);
}
$(function(){
  setTimeout('rect()');
});
