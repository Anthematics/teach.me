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
        console.log(response.url);
      };
    }).error(function(stuff) {
      console.log('error!');
      console.log(stuff);
    })
  });
  $('#next').on('click', function(e){
  window.location.href="http://localhost:3000/languages/ruby/chapters/1/steps/2"
})


});
