$(window).scroll(function(e){
  var $el = $('.transport-detail-card');
  var isPositionFixed = ($el.css('position') == 'fixed');
  if ($(this).scrollTop() > 150 && !isPositionFixed){
    $el.css({'position': 'fixed', 'top': '140px'});
  }
  if ($(this).scrollTop() < 150 && isPositionFixed){
    $el.css({'position': 'static', 'top': '140px'});
  }
});
