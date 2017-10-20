(function($) {
  $(function() {
    $('nav ul li > a:not(:only-child)').hover(function(e) {
      $(this).siblings('.nav-dropdown').toggle();
      $('.nav-dropdown').not($(this).siblings()).hide();
      e.stopPropagation();
    });
    $('html').hover(function() {
      $('.nav-dropdown').hide();
    });
  });
  document.querySelector('#nav-toggle').addEventListener('click', function() {
    this.classList.toggle('active');
  });
  $('#nav-toggle').hover(function() {
    $('nav ul').toggle();
  });
})(jQuery);