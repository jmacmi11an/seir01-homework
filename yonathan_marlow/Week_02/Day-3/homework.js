//
// const image1 = document.getElementsByTagName('img')[0];
//       image1.style.left = "0px";
//       image1.style.top = '50%';
//
// const catWalk = function () {
//   let oldWalk = parseInt(image1.style.left);
//   let newWalk = oldWalk + 10;
//   image1.style.left = newWalk + 'px';
//
//   // bonus 1
//   if (newWalk > innerWidth-image1.width) {
//     image1.style.left = "0px";
//   }
// }
//   setInterval(catWalk, 50)

  //bonus 2

  const image1 = document.getElementsByTagName('img')[0];
        image1.style.left = "0px";
        image1.style.top = '50%';

  const catWalk = function () {
  let oldWalk = parseInt(image1.style.left);


      if (oldWalk > innerWidth-250) {
    direction = 'left'
    image1.style.transform = "scaleX(-1)";

      }

      if (oldWalk < 20) {
    direction = 'right'
    image1.style.transform = "scaleX(+1)";
      }

      if (direction === 'right') {
    let newWalk = oldWalk + 10;
    image1.style.left = newWalk + 'px';
    console.log(image1.style.left);

      } else if (direction === 'left') {
    let newWalk = oldWalk - 10;
    image1.style.left = newWalk + 'px';
  }
}
    const walking = setInterval(catWalk, 50)
//


    // Bonus #3: When the cat reaches the middle of the screen, replace the img with an image of a cat dancing, keep it dancing for 10 seconds, and then replace the img with the original image and have it continue the walk.



  /// bonus 4: was trying to get the cat to stop in the middle. Actually can do it now based on bonus 2 - but ill probably finish on w.e
//
//
//   const image1 = document.getElementsByTagName('img')[0];
//         image1.style.left = "0px";
//         image1.style.top = '50%';
//
//   const catWalk = function () {
//   let oldWalk = parseInt(image1.style.left);
//
//   if (oldWalk > 400) {
//     direction = 'left'
//   }
//
//   if (oldWalk < 20) {
//     direction = 'right'
//   }
//
//   if (direction === 'right') {
//     let newWalk = oldWalk + 10;
//     image1.style.left = newWalk + 'px';
//     console.log(image1.style.left);
//   // if (newWalk > 400) {
//   //   clearInterval(walking);
//   // }
// } else if (direction === 'left') {
//     let newWalk = oldWalk - 10;
//     image1.style.left = newWalk + 'px';
//     console.log(image1.style.left);
//   // if (newWalk < 20) {
//   //   clearInterval(walking);
//   // }
// }
// };
//
// let direction = 'right'
// const walking = setInterval(catWalk, 50)
//
// Bonus #3: When the cat reaches the middle of the screen, replace the img with an image of a cat dancing, keep it dancing for 10 seconds, and then replace the img with the original image and have it continue the walk.
// //
// // Bonus #4: Pretty much go nuts or whatever.
