// ## Arrays - Flatten and Reverse
// The goal of this exercise is to manipulate arrays by creating a function that can reverse an array and by creating a function that can flatten an array. Do not use any libraries to complete this task - write this stuff from scratch using standard JS methods and objects.
// - Make two functions
//   - reverse
//   - flatten
// ```js
// reverse( [1, 2, 3, 4] );
// // => [ 4, 3, 2, 1 ]
// flatten( ["Hello", ["World", 42] ] );
// // => [ "Hello", "World", 42 ]
// ```
// You only need to make flatten work to one level deep! You should be able to flatten this - ` ["Hello", ["World"]] ` - but not this - ` ["Hello", [[["World"]]]] `
// ## Bonus
// Make one that flattens any array that you pass into it: ` ["Hello", [[["World"], 42]]] ` -> `[ "Hello", "World", 42 ]`


const reverse = function (array){
  let output = [];
  for (let i = array.length - 1; i >=0 ; i--){
    output.push(array[i])
  }
  return output;
};

console.log(reverse())



const flatten = function (arr) {
  const out = [];
  arr.forEach(function(element) {
    if (Array.isArray(element)) {
      out = out.concat(element)
    } else {
      out.push(el);
    }
  });
};
