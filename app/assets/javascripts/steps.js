document.addEventListener("DOMContentLoaded", function() {
   var code = $('.codemirror-textarea')[0];
   var editor = CodeMirror.fromTextArea(code, {
     lineNumbers :true,
     mode: "text/x-ruby"
  });


$('#submitcode').on("ajax:success",function(e, data,status,xhr){
 $('#result').html(e.detail[0]);
   });


  $('#savecode').on('click', function(e) {
    var next = document.querySelector('#next');
    next.style.display = 'block';
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

    }).error(function(stuff) {
      console.log('error!');
      console.log(stuff);
    })
  });


});
