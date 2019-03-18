$(function(){
  $('.card__image').on('mouseover',function(){
    $(this).children('img').attr('src','/assets/butai.jpeg')
  });

  $('.card__image').on('mouseout',function(){
    $(this).children('img').attr('src','/assets/kesiki.jpeg')
  });

});
