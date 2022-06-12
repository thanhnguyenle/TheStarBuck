
$(document).ready(function (e) {
    //select title list
    $(".prod-cat li").click(function (e) {
      //fix all 
      $(this).siblings('li').find('a').removeClass('active');
      ////change angle
      $(this).siblings('li').find('a').children('i').removeClass('fa-angle-right fa-angle-down');
      $(this).siblings('li').find('a').children('i').toggleClass('fa-angle-right');
      $(this).siblings('li').children('ul').slideUp(500);
      //fix specified
      $(this).children('a').toggleClass('active');
      $(this).children('ul').slideToggle(500);
      ////change angle
      $(this).children('a').children('i').toggleClass('fa-angle-right').toggleClass('fa-angle-down');
    });
//select list-item
  $(".prod-cat ul li").click(function (e) {
    e.stopPropagation();
    $(this).siblings('li').removeClass('active');
    $(this).addClass('active');
  });
  
});

//jquery price range
$(document).ready(function () {
  $("#slider-3").slider({
    range: true,
    min: 0,
    max: 500,
    values: [35, 200],
    slide: function (event, ui) {
      $("#from").val(ui.values[0]);
      $("#to").val(ui.values[1]);
    }
  });
  $("#from").val( $("#slider-3").slider("values", 0));
  $("#to").val( $("#slider-3").slider("values", 1));
  //
  $("input[name=from]").blur(function(){
    $( "#slider-3" ).slider('values',0,$('input[name=from]').val())
  });
  $("input[name=to]").blur(function(){
    $( "#slider-3" ).slider('values',1,$('input[name=to]').val())
  });
});

//Filter
$(document).ready(function(){
  $(".panel-body .form-group select").click(function(){
    var valueSelect = $(this).find("option:selected").text();
      $(this).siblings(".customSelect").text(valueSelect);
  });
});
