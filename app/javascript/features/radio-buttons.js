$(document).ready(function(){
  $(".js-address-choice-pickup").click(function(){
    $(".js-address-choice-pickup").removeClass("active");
    $(this).addClass("active");
  });
});

$(document).ready(function(){
  $(".js-address-choice-delivery").click(function(){
    $(".js-address-choice-delivery").removeClass("active");
    $(this).addClass("active");
  });
});
