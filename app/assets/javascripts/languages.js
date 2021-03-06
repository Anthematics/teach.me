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

  // On languages page, JS card styling below ------
    var jsText = document.querySelector('#js-text');
    var jsImage = document.querySelector('#js-image');
    var jsCard = document.querySelector('#js-card');

    if (jsCard) {
      jsCard.addEventListener('mouseover', jsMouseoverCardDisplay);
      jsCard.addEventListener('mouseout', jsMouseoutCardDisplay);
    }

    function jsMouseoverCardDisplay() {
      jsImage.style.opacity = "0.2";
      jsText.style.opacity = "1";
    }

    function jsMouseoutCardDisplay() {
      jsImage.style.opacity = "1";
      jsText.style.opacity = "0";
    }

  // On languages page, Pyhon card styling below ------
    var pythonText = document.querySelector('#python-text');
    var pythonImage = document.querySelector('#python-image');
    var pythonCard = document.querySelector('#python-card');

    if(pythonCard) {
      pythonCard.addEventListener('mouseover', pythonMouseoverCardDisplay);
      pythonCard.addEventListener('mouseout', pythonMouseoutCardDisplay);
    }

    function pythonMouseoverCardDisplay() {
      pythonImage.style.opacity = "0.1";
      pythonText.style.opacity = "1";
    }

    function pythonMouseoutCardDisplay() {
      pythonImage.style.opacity = "1";
      pythonText.style.opacity = "0";
    }

  // On languages page, language cards styling below ------
    // var cardBody = document.querySelector('.card-body');
    // var cardImage = document.querySelector('.card-image');
    // var languageCard = document.querySelector('.language-card');
    //
    // languageCard.addEventListener('mouseover', mouseoverCardDisplay);
    // languageCard.addEventListener('mouseout', mouseoutCardDisplay);
    //
    // function mouseoverCardDisplay() {
    //   cardImage.style.opacity = "0.1";
    //   cardBody.style.opacity = "1";
    // }
    //
    // function mouseoutCardDisplay() {
    //   cardImage.style.opacity = "1";
    //   cardBody.style.opacity = "0";
    // }

    
});
