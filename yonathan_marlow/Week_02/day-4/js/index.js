$("<h1>I love jQuery</h1>").appendTo('body')

let $newP = $('<p>Welcome!</p>')
$newP.css({'background-color': 'red'})
$newP.addClass('special');
$($newP).appendTo('body');

//can only append into something that already exists! Makes sense
$('a').html('yahoo');
$('a').attr('href', 'http://www.yahoo.com');
$('a').attr('id', 'yahoo');
$('a').css({'color': 'red'});


const myParagraph = $('<p class="intro">this is the second paragraph I wrote using jQuery</p>');
$('body').append(myParagraph);
myParagraph.css('font-size','4em');


$("#yahoo").attr("href", "http://generalassemb.ly").css("font-size", "25px").text("General Assembly")
