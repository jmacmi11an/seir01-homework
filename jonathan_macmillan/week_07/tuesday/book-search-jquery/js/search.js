const fetchCover = function () {
  event.preventDefault();
  const title = $('#book_title').val();
  const url = `https://www.googleapis.com/books/v1/volumes?q=:title${ title }`;

// New style jQuery: Deferreds => Promises
  $.ajax(url).done(function (data) {
    const cover = data.items[0]["volumeInfo"]["imageLinks"]["thumbnail"];
    $('#cover').attr('src', cover);
  }).done(function (response) {
    console.log(response);
  });
};



const $form = $('#search_form');
$form.on('submit', fetchCover);
