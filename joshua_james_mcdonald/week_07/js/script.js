
const fetchBook = function(){
    const title = document.getElementById('search').value;
    console.log(title);

    const xhr = new XMLHttpRequest();
    xhr.open('GET', `https://www.googleapis.com/books/v1/volumes?q=title:${title}`);
    xhr.send(); // asynchronous
    xhr.onreadystatechange = function(){
        if (xhr.readyState !== 4) return; // not ready yet
        const p =document.createElement('p');

        const img =document.createElement('img');
        const data = JSON.parse(xhr.responseText);
        image = data.items[0].volumeInfo.imageLinks.thumbnail;
        img.src = image;
        p.innerHTML = data.items[0].volumeInfo.title;
        document.body.appendChild(p);
        document.body.appendChild(img);

        
    }
}

document.getElementById('search-btn').addEventListener('click', fetchBook)