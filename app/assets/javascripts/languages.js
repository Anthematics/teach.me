// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
document.addEventListener("DOMContentLoaded", function() {

  $('.toggle').click(function(e) {
      e.preventDefault();

      var $this = $(this);

      if ($this.next().hasClass('show')) {
          $this.next().removeClass('show');
          $this.next().slideUp(350);
      } else {
          $this.parent().parent().find('li .inner').removeClass('show');
          $this.parent().parent().find('li .inner').slideUp(350);
          $this.next().toggleClass('show');
          $this.next().slideToggle(350);
      }
  });
});
