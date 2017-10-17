$(document).ready(function() {
   var code = $('.codemirror-textarea')[0];
   var editor = CodeMirror.fromTextArea(code, {
   	lineNumbers :true,
   	mode: "text/x-ruby"
   })

   $('#submitcode').on("ajax:success",function(e, data,status,xhr){
 $('#result').html(e.detail[0]);
});
});
