let word = ['F', 'O', 'X'];
let guesses = ['_', '_', '_'];
var reward = 0;
let guessedLetters = [];
const guessLetter = function (guessedLetter) {
    if (guessedLetters.includes(guessedLetter)){ 
        guessedLetters.push(guessedLetter);
        if (guessedLetters.length==6) {// game over condition
            console.log(`You lost
            +---+
            |   |
            O   |
           /|\\  |
           / \\  |
                |
          =========`)
        
        // reset game to start again
        word = ['F', 'O', 'X'];
        guesses = ['_', '_', '_'];
        reward = 0;
        guessedLetters = [];
        }
        return;
    }
    guessedLetters.push(guessedLetter);

    function arraysEqual(a, b) {
        for (let i = 0; i < a.length; ++i) {
            if (a[i] !== b[i]) return false;
        }
        return true;
    }
    randomAmount = Math.round(Math.random()*50); // maximum additional reward of 50
    let flagCorrectGuess = 0;//counts number of times a letter appears
    for (i = 0; i < word.length; i++) {
        if (guessedLetter === word[i]) {
            guesses[i] = guessedLetter;
            flagCorrectGuess +=1;
            if (arraysEqual(word, guesses)) {
                console.log(`You won! the word was ${guesses} and your reward is $${reward + flagCorrectGuess*randomAmount}`);
                return;
            }
            console.log(`Congrats! you found the letter ${guessedLetter}. The rest of the word is: ${guesses}`);
            break;
        }


    }
    if (flagCorrectGuess){ 
        reward+= randomAmount*flagCorrectGuess;
    }
    else{
        reward-=randomAmount;
    }
    console.log(`Current reward is $${reward}`);

}
guessLetter('F');
guessLetter('Q');
guessLetter('O');
guessLetter('X');

// guessLetter('P');
// guessLetter('P');
// guessLetter('P');
// guessLetter('P');
// guessLetter('P');
// guessLetter('P');
// guessLetter('P');