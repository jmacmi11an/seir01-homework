let page = 1;
const searchFlickr = function (keywords) {
  console.log('Searching Flickr for', keywords);

  //todo: all the ajax stuff
  const flickrURL = 'https://api.flickr.com/services/rest?jsoncallback=?'
  $.getJSON(flickrURL, { // this object only works on flickr
    method: 'flickr.photos.search', // not to be confused with method="POST"
    api_key: '2f5ac274ecfac5a455f38745704ad084',
    text: keywords, //what we are actually searching for
    page: page,
    format: 'json'
  }).done(showImages).done(function (info){
    console.log(info); //debugging only
  });
};

const showImages = function (results) {
  _( results.photos.photo ).each(function (photo){
    const thumbnailURL = generateURL(photo);
    const $img = $('<img>', {src: thumbnailURL});
    // $('#images').append($img);
    $img.appendTo('#images');
  });
  $('img').click(function() {
    $(this).toggleClass("feature");
  })
};


const generateURL = function (p) {
  return [
  'http://farm',
  p.farm,
  '.static.flickr.com/',
  p.server,
  '/',
  p.id,
  '_',
  p.secret,
  '_q.jpg' // change 'q' to something else for different sizes
].join('');
};



$(document).ready(function () {

  //select the form
  //attach the submit handler
  $('#search').on('submit', function (event) {
    $('img').remove();
    page = 1;
    event.preventDefault(); //disabled the form submission
    const term = $('#query').val();
    searchFlickr(term);
  });

  $(window).on('scroll', _.throttle(function() {
    const scrollBottom = $(document).height() - $(window).height() - $(window).scrollTop()
    if (scrollBottom <= 700) {
      const term = $('#query').val();
      page ++
      searchFlickr(term);

    }
  }, 700)); //originally wasn't working because pause was set to 100



});





// show page 2, page 3, page 4 -> just increment a page count. -> DONE sort of
// stop when we reach the end of results (make fewer requests) underscore can help (but hard to understand --- functions?) -> lazy loading?

// restart at page 1 when a new search is made -> DONE
// clear the previous images  -> DONE

// make it beautiful and rich
