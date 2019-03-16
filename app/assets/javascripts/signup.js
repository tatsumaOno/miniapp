$(function(){
  $('.card__image').on('mouseover',function(){
    $(this).children('img').attr('src','/assets/female.png')
  });
  $('.card__image').on('mouseout',function(){
    $(this).children('img').attr('src','/assets/kesiki.jpeg')
  });

});
