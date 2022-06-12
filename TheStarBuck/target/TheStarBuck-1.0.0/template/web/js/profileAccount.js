
$(document).ready(function () {
  $('input[type=file]').on('change', function () {
    var $files = $(this).get(0).files;

    if ($files.length) {
      if ($files[0].size > $(this).data('max-size') * 3024) {
        console.log('Please upload image with smaller size!');
        return false;
      }

      console.log('Loading ...');

      var apiUrl = 'https://api.imgbb.com/1/upload';
      var apiKey = '17b29f3f64c3cc163e77aacd0b34f211';

      var settings = {
          "url":`${apiUrl}?key=${apiKey}`,
          "method":"POST",
          "timeout": 0,
          "processData": false,
          "mimeType": "multipart/form-data",
          "contentType": false,
      };

      var formData = new FormData();
      formData.append('image', $files[0]);
      settings.data = formData;

      $.ajax(settings).done(function (response) {
          var obj = JSON.parse(response);
        $('.file-upload img').attr('src',obj.data.url);
        // document.getElementById('body').innerHTML = `<img src='"+ obj.data.link +"' style='width: 100%'>`;
      });
    }
  });
}); 

function clickClose(){
  document.querySelectorAll(".modal").forEach(a=>a.style.display = "none");
}

function confirmSendMail(){
  if (confirm("You want verify your mail right now!") == true) {
      //send mail to user
  } else {
    //nothing
  }
}

$(document).ready(function(){  
  $('.addButtonSlide').slideUp();
  $('.addButtonBtn').click(function(){
      // $('.addButtonSlide').slideToggle(500);

  var $t = $('.addButtonSlide');

  if ($t.is(':visible')) {
      $t.slideUp(500);
      // Other stuff to do on slideUp
      $('.addButtonBtn').html('Add Address')
  } else {
      $t.slideDown(500);
      // Other stuff to down on slideDown
      $('.addButtonBtn').html('Save')
  }
});
});

//AJAX read file json -> generate list province, district, ward
$(document).ready(function () {
  const xmlhttp = new XMLHttpRequest();
  const url = "https://provinces.open-api.vn/api/?depth=3";
  var myArrProvince;
  var myArrDistrict;
  var myArrWard;

  xmlhttp.onreadystatechange = function () {
      //4 DONE : thao tac hoan tat
      //200 OK, 403 Forbidden, 404 Page not found
      if (this.readyState == 4 && this.status == 200) {
          myArrProvince = JSON.parse(this.responseText);
          addOption(myArrProvince,'#province');
      }
  };
  xmlhttp.open("GET", url, true);
  xmlhttp.send();

  function addOption(arr,id) {
      for (let i = 0; i < arr.length; i++) {
          let optionValue = arr[i].code;
          let optionText = arr[i].name;
          $(id).append(`<option value="${optionValue}"> 
                                             ${optionText}
                                 </option>`);

      }
  }

  $('#province').on('change',function (e){
      //delete all selected of select
  }).on('change',function (e){
      let optionSelected = $("option:selected", this);
      let valueSelected = optionSelected.val();
      for(let i = 0;i<myArrProvince.length;i++){
          let optionValue = myArrProvince[i].code;
          //use "==" is exactly, dont change plz
          if(optionValue==valueSelected){
              myArrDistrict = myArrProvince[i].districts;
              break;
          }
      }
      let listdistrict = myArrDistrict;
      $('#district').empty();
      for (let j = 0; j < listdistrict.length; j++) {
          let optionValue = listdistrict[j].code;
          let optionText = listdistrict[j].name;
          $('#district').append(`<option value="${optionValue}">
                                         ${optionText}
                             </option>`);
      }
  });

  $('#district').on('change',function (e) {
  }).on('change',function (e){
      let optionSelected = $("option:selected", this);
      let valueSelected = optionSelected.val();
      for(let i = 0;i<myArrDistrict.length;i++){
          let optionValue = myArrDistrict[i].code;
          if(optionValue==valueSelected){
              myArrWard = myArrDistrict[i].wards;
              break;
          }
      }

      let listwards = myArrWard;
      $('#ward').empty();
      for (let j = 0; j < listwards.length; j++) {
          let optionValue = listwards[j].code;
          let optionText = listwards[j].name;
          $('#ward').append(`<option value="${optionValue}">
                                         ${optionText}
                             </option>`);
      }
  });
});