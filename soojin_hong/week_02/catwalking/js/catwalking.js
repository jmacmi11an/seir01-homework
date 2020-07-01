const img = document.getElementById('blackCat');
img.style.paddingLeft = '0px';

const catWalk = function () {
  let oldLeft = parseInt(img.style.paddingLeft);
  let newLeft = oldLeft+ 10;
  img.style.paddingLeft = newLeft + 'px';
}

setInterval(catWalk, 50);
