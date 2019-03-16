  function rect(){
  $('.form_design').animate({
    marginTop: '-=10px'
  },800).animate({
    marginTop: '+=10px'
  },800);
  setTimeout('rect()',1600);
}
$(function(){
  setTimeout('rect()');
});


$(function(){
  $('.form_design').click(function(){
    $(this).fadeOut();
  })
});
