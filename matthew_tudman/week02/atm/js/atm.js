
$('#checking-balance').css('background-color', 'red');
$('#savings-balance').css('background-color', 'red');

const colorChange = function(input) {
  if (input.text() === "$0") {
    input.css('background-color', 'red')
  } else {
    input.css('background-color', '#E3E3E3')
  }
}

// CHECKING

const getChecking = function() {
  return parseFloat($('#checking-balance').text().slice(1));
}
const setChecking = function(input){
  $('#checking-balance').text(`$` + input);
  colorChange($('#checking-balance'));
}


const parseCheckingInput = function() {
  amount = $('#checking-amount').val();
  if (amount === "") {
    console.log("Please enter a price.");
    return 0;
  } else {
    return parseFloat(amount);
  }
}


const depositChecking = function() {
  setChecking(getChecking() + parseCheckingInput());
}


const withdrawChecking = function() {
  let withdrawal = parseCheckingInput();
  let balance = getChecking();
  if ((balance - withdrawal) < 0) {
    let savingsBalance = getSavings();
    if ((savingsBalance + balance - withdrawal) < 0){
          console.log("You do not have enough funds.")
    } else {
      setChecking(0);
      setSavings(savingsBalance + balance - withdrawal);
    }
  } else {
    setChecking(balance - withdrawal);
  }
}

$('#checking-deposit').click(depositChecking);
$('#checking-withdraw').click(withdrawChecking);



// SAVINGS



const getSavings = function() {
  return parseFloat($('#savings-balance').text().slice(1));
}
const setSavings = function(input){
  $('#savings-balance').text(`$` + input);
  colorChange($('#savings-balance'));
}


const parseSavingsInput = function() {
  amount = $('#savings-amount').val();
  if (amount === "") {
    console.log("Please enter a price.");
    return 0;
  } else {
    return parseFloat(amount);
  }
}

const depositSavings = function() {
  setSavings(getSavings() + parseSavingsInput());
}


const withdrawSavings = function() {
  let withdrawal = parseSavingsInput();
  let balance = getSavings();
  if ((balance - withdrawal) < 0) {
    let checkingBalance = getChecking();
    if ((checkingBalance + balance - withdrawal) < 0){
          console.log("You do not have enough funds.")
    } else {
      setSavings(0);
      setChecking(checkingBalance + balance - withdrawal);
    }
  } else {
    setSavings(balance - withdrawal);
  }
}

$('#savings-deposit').click(depositSavings);
$('#savings-withdraw').click(withdrawSavings);
