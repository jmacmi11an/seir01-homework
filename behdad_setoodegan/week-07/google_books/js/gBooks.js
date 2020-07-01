const xhr = new XMLHttpRequest();

const fetchFact = function(){
    
    title = document.getElementById("bookName").value;
    xhr.onreadystatechange = function(){
        if(this.readyState != 4) return;

        const img = document.createElement('img')
        const data = JSON.parse(this.responseText)
        imageLink = data["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
        img.src = imageLink
        document.body.appendChild(img)
    }

    
    xhr.open('GET', `https://www.googleapis.com/books/v1/volumes?q=title:${title}`, true);
    xhr.send();
}

document.getElementById('searchBox').addEventListener('click', fetchFact)


  
  
  