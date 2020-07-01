const books = [
  {title: 'The Design of EveryDay Things',
   author: 'Don Norman',
   alreadyRead: false
  },
  {title: 'The Most Human Human',
  author: 'Brian Christian',
  alreadyRead: true
  }];

$(document).ready( function () {
  $('<h1>').appendTo('body').text('My Book List');

  const $ul = $('<ul></ul>');

  for (let i = 0; i < books.length; i++) {
    const book = books[i];
    const $li = $(`<li>${ book.title } by ${ book.author }</li>`);

    if (book.alreadyRead) {
      $li.addClass('read');
    }
    $li.appendTo('$ul');
  }
  $ul.appendTo('body');
});
