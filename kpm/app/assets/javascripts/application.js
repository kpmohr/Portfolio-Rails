// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

console.log('application.js linked');

$(document).ready(() => {
    console.log('script loaded');

    console.log('%cSUP NERD', 'font-size:15px; background:yellow; color:green;');

    // Actual start of info for site

    $('#contact').click(function() {
        window.location.href = '/contact';
    });

    $('#resume').click(function() {
        window.location.href = '/resume';
    });

    $('#portfolio').click(function() {
        window.location.href = '/portfolio';
    });

    $('#skillsSB').click(function() {
        $(this).removeClass('offSB').addClass('onSB');
        $('#resumeSB').removeClass('onSB').addClass('offSB');
        $('#skillsInfo').css('display', 'flex');
        $('#resumeImgs').css('display', 'none');
    });

    $('#resumeSB').click(function() {
        $(this).removeClass('offSB').addClass('onSB');
        $('#skillsSB').removeClass('onSB').addClass('offSB');
        $('#resumeImgs').css('display', 'flex');
        $('#skillsInfo').css('display', 'none');
    });


    const view = $("#slide");
    const move = "200px";
    const sliderLimit = -1050;

    $("#rightArrow").click(function() {

        let currentPosition = parseInt(view.css("left"));
        if (currentPosition >= sliderLimit) view.stop(false, true).animate({ left: "-=" + move }, { duration: 400 })

    });

    $("#leftArrow").click(function() {

        let currentPosition = parseInt(view.css("left"));
        if (currentPosition < 0) view.stop(false, true).animate({ left: "+=" + move }, { duration: 400 });

    });

    // if ($('#indexNext').val() === 'NEXT') {
    //     window.location.replaceAll("file:///Users/kaitlynmohr/Documents/Website/views/index.html");
    // }


    $('#modal').click(function(){

            window.location = "file:///Users/kaitlynmohr/Documents/Website/views/index.html";

    });

     // Add smooth scrolling to all links
  $("a").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 800, function(){

      });
    } // End if
  });

});
