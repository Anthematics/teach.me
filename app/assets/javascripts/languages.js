document.addEventListener("DOMContentLoaded", function() {

// // On languages page, Ruby card styling below ------
//   var rubyText = document.querySelector('#ruby-text');
//   var rubyImage = document.querySelector('#ruby-image');
//   var rubyCard = document.querySelector('#ruby-card');
//
//   rubyCard.addEventListener('mouseover',rubyMouseoverCardDisplay);
//   rubyCard.addEventListener('mouseout', rubyMouseoutCardDisplay);
//
//   function rubyMouseoverCardDisplay() {
//     rubyImage.style.opacity = "0.2";
//     rubyText.style.opacity = "1";
//   }
//
//   function rubyMouseoutCardDisplay() {
//     rubyImage.style.opacity = "1";
//     rubyText.style.opacity = "0";
//   }
//
// // On languages page, JS card styling below ------
//   var jsText = document.querySelector('#js-text');
//   var jsImage = document.querySelector('#js-image');
//   var jsCard = document.querySelector('#js-card');
//
//   jsCard.addEventListener('mouseover', jsMouseoverCardDisplay);
//   jsCard.addEventListener('mouseout', jsMouseoutCardDisplay);
//
//   function jsMouseoverCardDisplay() {
//     jsImage.style.opacity = "0.2";
//     jsText.style.opacity = "1";
//   }
//
//   function jsMouseoutCardDisplay() {
//     jsImage.style.opacity = "1";
//     jsText.style.opacity = "0";
//   }
//
// // On languages page, Pyhon card styling below ------
//   var pythonText = document.querySelector('#python-text');
//   var pythonImage = document.querySelector('#python-image');
//   var pythonCard = document.querySelector('#python-card');
//
//   pythonCard.addEventListener('mouseover', pythonMouseoverCardDisplay);
//   pythonCard.addEventListener('mouseout', pythonMouseoutCardDisplay);
//
//   function pythonMouseoverCardDisplay() {
//     pythonImage.style.opacity = "0.1";
//     pythonText.style.opacity = "1";
//   }
//
//   function pythonMouseoutCardDisplay() {
//     pythonImage.style.opacity = "1";
//     pythonText.style.opacity = "0";
//   }

// On languages page, language cards styling below ------
  var cardBody = document.querySelectorAll('.card-body');
  var cardImage = document.querySelectorAll('.card-image');
  var languageCard = document.querySelectorAll('.language-card');

  for (var i = 0; i < languageCard.length; i++) {
    languageCard.addEventListener('mouseover', mouseoverCardDisplay);
    languageCard.addEventListener('mouseout', mouseoutCardDisplay);

    function mouseoverCardDisplay() {
      cardImage[i].style.opacity = "0.1";
      cardBody[i].style.opacity = "1";
    }

    function mouseoutCardDisplay() {
      cardImage[i].style.opacity = "1";
      cardBody[i].style.opacity = "0";
    }
  }

  // var languageCard = document.querySelector('#cards');
  //
  // languageCard.addEventListener('mouseover',function(e) {
  //   var languageCard = e.target.parentNode
  //   if (languageCard.className === 'language-card') {
  //     languageCard.querySelector('.card-body').style.opacity = '1';
  //     languageCard.querySelector('.card-image').style.opacity = '0.1';
  //   }
  // });
  //
  // languageCard.addEventListener('mouseout',function(e) {
  //   var languageCard = e.target.parentNode
  //   if (languageCard.className === 'language-card') {
  //     languageCard.querySelector('.card-body').style.opacity = '0';
  //     languageCard.querySelector('.card-image').style.opacity = '1';
  //   }
  // });
});
