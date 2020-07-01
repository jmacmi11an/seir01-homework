// Solution to first set of homework exercises
// Questions from https://gist.github.com/wofockham/8f953ac7f33125898071

// THE CALCULATOR
// ##########################################################################################################################
// PART 1

/**
 * This function will take one argument (a number), square that number, and return the result.
 * @param {number}[inutNumber]
 */

function squareNumber(inputNumber) {
    let result = Math.pow(inputNumber, 2);
    console.log(`The result of squaring ${inputNumber} is ${result}`);
    return (result);
}

/**
 * This function restuns half the input, and logs the result.
 * @param{number}[inputNumber]
 */
const halfNumber = function (inputNumber) {
    let result = inputNumber / 2;
    console.log(`Half of ${inputNumber} is ${result}`);
    return (result);
}
 
/**
 * This function takes 2 numbers as input, and finds what percentage of the second number that the first number is, and returns it. Also logs the result
 * @param{number}[firstNumber]
 * @param{number}[secondNumber]
 */
function percentOf(firstNumber, secondNumber) {
    percentageOfSecondNumber = Math.round(100 * firstNumber / secondNumber);
    console.log(`${firstNumber} is ${percentageOfSecondNumber}% of ${secondNumber}`);
    return (percentageOfSecondNumber);
}


// ##########################################################################################################################
// PART 2

/**
 * Write a function that will take one argument (a number) and perform the following operations, using the functions you wrote earlier
 * Take half of the number and store the result.
 * Square the result of #1 and store that result.
 * Calculate the area of a circle with the result of #2 as the radius.
 * Calculate what percentage that area is of the squared result (#3).
 */
function calculatePart2(inputNumber) {
    let halvedNumber = halfNumber(inputNumber);
    let squaredNumber = squareNumber(halvedNumber);
    let radius = squaredNumber;
    let area = Math.PI * Math.pow(radius, 2); // area of circle formula
    let finalResult = percentOf(area, squaredNumber);
    console.log(`calculate result is: ${finalResult}`);
    return (finalResult)
}

// STRINGS
// ##########################################################################################################################

// DrEvil
/**
 * This function will take a number, and return that number + 'dollars' unless it is 1,000,000 in which case it will also add ' (pinky)'
 * @param {number} worldRansom 
 */
function isItEvil(worldRansom) {
    let output = worldRansom + ' dollars';
    if (worldRansom == 1000000) {
        output = output + ' (pinky)';
    }
    return (output);
}

// mixUp
/**
 * This function takes two strings, and returns the concatenation of the two strings (separated by a space) slicing out and swapping the first 2 characters of each. 
 * @param {string} firstString 
 * @param {string} secondString 
 */
function mixUp(firstString, secondString) {
    let firstOutput = secondString.slice(0, 2) + firstString.slice(2);
    let secondOutput = firstString.slice(0, 2) + secondString.slice(2); // TODO consider putting this type of command into a function in the function
    result = firstOutput + ' ' + secondOutput
    return (result);
}

// FixStart
/**
 * Takes an input string, and replaces all occurrences of the first letter in the string with '*', apart from for the first instance itself. 
 * @param {string} stringInput 
 */
function fixStart(stringInput) {
    let key = stringInput[0];
    let newString = [key];
    for (let i = 1; i < stringInput.length; i++) {
        if (stringInput[i] == key) {
            newString[i] = '*';
        } else {
            newString[i] = stringInput[i];
        }

    }
    result = newString.join("");
    return (result);
}

// Verbing
/**
 * Takes a string input and adds 'ing' to the end if it wasnt there already. 
 * @param {string} inputString 
 */
function verbing(inputString) {
    if (inputString.length < 3) {
        return (inputString);
    } else if (inputString.substr(inputString.length - 3) == "ing") {
        return (inputString);
    } else {
        let newString = inputString + "ing";
        return (newString);
    }
}

// NOT BAD
/**
 * Takes a string input, and replaces inclusively any text between 'not' and 'bad' with 'good'. Else leave the text unchanged, and returns the input.
 * @param {string} inputString 
 */
function notBad(inputString) {
    let posOfNotSubStr = inputString.search("not");
    let posOfBadSubStr = inputString.search("bad");
    if ((posOfNotSubStr != -1) && (posOfBadSubStr != -1) && (posOfBadSubStr > posOfNotSubStr)) {
        let outputString = inputString.substr(0, posOfNotSubStr) + 'good' + inputString.substr(posOfBadSubStr + 3);
        return (outputString);
    } else {
        return (inputString);
    }
}

//testing
// ################################################################################################################################################

console.log("\n calculator testing \n ********************************")
// squareNumber(2);
// halfNumber(10);
// percentOf(4, 10);
calculatePart2(1);

console.log("\n drEvil testing \n ********************************")
console.log(`999999 -> ${isItEvil(999999)}`);
console.log(`1000000 -> ${isItEvil(1000000)}`);

console.log("\n mixUp testing \n ********************************")
console.log(`foo bar -> ${mixUp("foo", "bar")}`);
console.log(`lorem ipsum -> ${mixUp("lorem", "ipsum")}`);

console.log("\n fixStart testing \n ********************************")
console.log(`my name is maddy and i like meaty meat pies -> ${fixStart("my name is maddy and i like meaty meat pies")}`);
console.log(` my name is maddy and i like meaty meat pies -> ${fixStart(" my name is maddy and i like meaty meat pies")}`);

console.log("\n verbing testing \n ********************************")
console.log(`foo -> ${verbing("foo")}`);
console.log(`baring -> ${verbing("baring")}`);
console.log(`ing -> ${verbing("ing")}`);
console.log(`my -> ${verbing("my")}`);

console.log("\n notBad testing \n ********************************")
console.log(`input: "This dinner is not that bad!"      output: "${notBad("This dinner is not that bad!")}"         expected: "This dinner is good!"`);
console.log(`input: "This movie is not so bad!"         output: "${notBad("This movie is not so bad!")}"          expected: "This movie is good!"`);
console.log(`input: "This dinner is bad!"               output: "${notBad("This dinner is bad!")}"          expected: "This dinner is bad!"`);