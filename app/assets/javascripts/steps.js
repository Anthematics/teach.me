document.addEventListener("DOMContentLoaded", function() {
   var code = $('.codemirror-textarea')[0];
   var editor = CodeMirror.fromTextArea(code, {
     lineNumbers :true,
     mode: "text/x-ruby"
  });
$('#loader').css("display", "none")

$('#submitcode').on("ajax:success",function(e, data,status,xhr){
 $('#result').html(e.detail[0]);
   });


  $('#savecode').on('click', function(e) {
    var next = document.querySelector('#next');
    $('#loader').css("display","block")
    e.preventDefault();
    var code = $('.codemirror-textarea').val();
    var url = $('#step_url').val();
    $.ajax({
      url: url,
      method: 'post',
      dataType: "json",
      data: {code: code}
    }).done(function(response) {
      console.log(response);
      $('#results').html(response.message)
      if (response.pass){
        next.style.display = "block";
        $('#loader').css("display", "none")

        $('#next').on('click', function(e){
          window.location.href=response.url
        })
      };
    }).fail(function(response) {
      $('#loader').css("display", "none")
      $('#results').html(response.message)
      console.log('error!');
    
    })
  });



});
