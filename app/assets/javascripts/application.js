// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require turbolinks
//= require codemirror
//= require ruby

//= require_tree .
//= require bootstrap-sprockets

document.addEventListener("DOMContentLoaded", function() {

// On languages page, Ruby card styling below ------
  let rubyText = document.querySelector('#ruby-text');
  let rubyImage = document.querySelector('#ruby-image');
  let rubyCard = document.querySelector('#ruby-card');

  rubyCard.addEventListener('mouseover',rubyMouseoverCardDisplay);
  rubyCard.addEventListener('mouseout', rubyMouseoutCardDisplay);

  function rubyMouseoverCardDisplay() {
    rubyImage.style.opacity = "0.2";
    rubyText.style.opacity = "1";
  }

  function rubyMouseoutCardDisplay() {
    rubyImage.style.opacity = "1";
    rubyText.style.opacity = "0";
  }

// On languages page, JS card styling below ------
  let jsText = document.querySelector('#js-text');
  let jsImage = document.querySelector('#js-image');
  let jsCard = document.querySelector('#js-card');

  jsCard.addEventListener('mouseover', jsMouseoverCardDisplay);
  jsCard.addEventListener('mouseout', jsMouseoutCardDisplay);

  function jsMouseoverCardDisplay() {
    jsImage.style.opacity = "0.2";
    jsText.style.opacity = "1";
  }

  function jsMouseoutCardDisplay() {
    jsImage.style.opacity = "1";
    jsText.style.opacity = "0";
  }

// On languages page, Pyhon card styling below ------
  let pythonText = document.querySelector('#python-text');
  let pythonImage = document.querySelector('#python-image');
  let pythonCard = document.querySelector('#python-card');

  pythonCard.addEventListener('mouseover', pythonMouseoverCardDisplay);
  pythonCard.addEventListener('mouseout', pythonMouseoutCardDisplay);

  function pythonMouseoverCardDisplay() {
    pythonImage.style.opacity = "0.1";
    pythonText.style.opacity = "1";
  }

  function pythonMouseoutCardDisplay() {
    pythonImage.style.opacity = "1";
    pythonText.style.opacity = "0";
  }

});
