$(document).ready( function () {
  $('body').css('font-family', 'Arial, sans-serif');

  $('#nickname').text('soojin');
  $('#favorites').text('tea');
  $('#hometown').text('Seoul');

  $('li').addClass('listitem');

  $('<img src="http://www.fillmurray.com/400/300">').appendTo('body');
});
