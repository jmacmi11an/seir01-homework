const fetchBook = function () {
  const xhr = new XMLHttpRequest();

  xhr.onreadystatechange = function () {
    if ( xhr.readyState !== 4 ) return;

      const book = JSON.parse(xhr.responseText);
      const img = document.getElementById('book_img');
      img.src = book.items[0].volumeInfo.imageLinks.thumbnail;
  };

  const bookTitle = document.getElementById('title').value
  xhr.open('GET', `https://www.googleapis.com/books/v1/volumes?q=title:${ bookTitle }`);
  xhr.send();
}

document.getElementById('fetch').addEventListener('click', fetchBook);
fetchBook();
