const fetchBook = function () {
  const xhr = new XMLHttpRequest ();
  var bookTitle = document.getElementById("bookSearch").value //how to make this a string

  xhr.onreadystatechange = function(){
    if (xhr.readyState !== 4) return;

    const data = JSON.parse(xhr.responseText);

    let thumb = data.items[0]["volumeInfo"]["imageLinks"]["smallThumbnail"];
    let title = data.items[0]["volumeInfo"]["title"];
    let about = data.items[0]["volumeInfo"]["description"];

    const img = document.createElement("IMG");
      img.setAttribute('src', thumb);
    document.body.appendChild(img);

    const p = document.getElementById('display');
    p.innerHTML = about;
  };

  xhr.open('GET', `https://www.googleapis.com/books/v1/volumes?q=:title${ bookTitle }`)
  xhr.send();
};


document.getElementById('btn').addEventListener('click', fetchBook);
