/*
 * Viewport - jQuery selectors for finding elements in viewport
 *
 * Copyright (c) 2008-2009 Mika Tuupola
 *
 * Licensed under the MIT license:
 *   http://www.opensource.org/licenses/mit-license.php
 *
 * Project home:
 *  http://www.appelsiini.net/projects/viewport
 *
 */
(function($) {
    
})(jQuery);

$(document).ready(function() {


});

$('a.mobile-toggle').on('click', function(e) {
	console.log('toggled');
  $('header').toggleClass("show-mobile-nav");
  e.preventDefault();
});

// Open content links in new page
$(".main-content a[href^='http:'],a[href^='https:']").attr("target","_blank");