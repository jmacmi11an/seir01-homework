const fetchBook = function () {
  const book = document.getElementById('searchRequest').value
  const xhr = new XMLHttpRequest();
  xhr.open('GET', 'https://www.googleapis.com/books/v1/volumes?q=title:'+book);
  xhr.send();
  xhr.onreadystatechange = function () {
    if (xhr.readyState !== 4) return;
    data = JSON.parse(xhr.responseText)
    const title = document.createElement('p')
      title.setAttribute("class", "title");
      title.innerText = data.items[0].volumeInfo.title
      document.getElementById("container").appendChild(title);
    const image = document.createElement('img')
      image.setAttribute("class", "image");
      image.src = data.items[0].volumeInfo.imageLinks.smallThumbnail
      document.getElementById("container").appendChild(image);
  }
}
document.getElementById('fetch').addEventListener('click', fetchBook)
