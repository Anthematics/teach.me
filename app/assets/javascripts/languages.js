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


  // On languages page, Ruby card styling below ------
    var rubyText = document.querySelector('#ruby-text');
    var rubyImage = document.querySelector('#ruby-image');
    var rubyCard = document.querySelector('#ruby-card');

    if (rubyCard) {
      rubyCard.addEventListener('mouseover',rubyMouseoverCardDisplay);
      rubyCard.addEventListener('mouseout', rubyMouseoutCardDisplay);
    }

    function rubyMouseoverCardDisplay() {
      rubyImage.style.opacity = "0.2";
      rubyText.style.opacity = "1";
    }

    function rubyMouseoutCardDisplay() {
      rubyImage.style.opacity = "1";
      rubyText.style.opacity = "0";
    }
});
