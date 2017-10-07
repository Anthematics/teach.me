 $(document).ready(function() {
 	var editableCodeMirror = CodeMirror.fromTextArea(document.getElementByClass('.codemirror-textarea'), {
        mode: "ruby",
        theme: "default",
        lineNumbers: true
    });
});