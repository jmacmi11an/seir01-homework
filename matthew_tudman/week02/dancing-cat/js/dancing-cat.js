const cat = document.querySelector('#walkkitty');
const audio = document.querySelector('#iloveit');
const danceCat = document.querySelector('#dancekitty')


  cat.style.left = '0px';
  danceCat.style.left = "450px"
  danceCat.style.visibility = "hidden";
  audio.style.visibility = "hidden";


let numSwitch = 5;

const timerReset = function() {
  danceCat.style.visibility = "hidden";
  timerID = setInterval(thisCatIsMadeForWalking, 10);
}




  const thisCatIsMadeForWalking = function() {
    let oldLeft = parseInt(cat.style.left);
    let newLeft = oldLeft + numSwitch;
    cat.style.left = newLeft + 'px';
    if (parseInt(cat.style.left) > parseInt('1000px')) {
      cat.style.transform = "scaleX(-1)";
      numSwitch = -5;
    }
    if (parseInt(cat.style.left) < parseInt('0px')) {
      cat.style.transform = "scaleX(1)";
      numSwitch = 5;
    }
    if (parseInt(cat.style.left) === parseInt('500px')) {
        clearInterval(timerID);
        danceCat.style.visibility = "visible";
        audio.play();
        setTimeout(timerReset, 10000);
    }

  };





let timerID = setInterval(thisCatIsMadeForWalking, 10);
