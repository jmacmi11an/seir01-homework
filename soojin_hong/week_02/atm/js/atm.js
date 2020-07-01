//aleks solution - move js script bottom no doc.ready

// Get value for checking
const getChecking = function () {
  return parseFloat($('#checking-balance').text().slice(1))
};

// Set value for checking
const setChecking = function (balance) {
  return $('#checking-balance').text('$' + balance)
};

const parseCheckingInput = function () {
  const amount = $('#checking-amount').val()
  if (amount === '') {
    console.log('You need to input a price')
    return 0;
  } else {
  return parseFloat(amount)
 }
};

// Deposit function
const depositChecking = function () {
  const amount = parseCheckingInput()
  const previousAmount = getChecking()
  setChecking(amount + previousAmount)
};

// Withdraw function
const withdrawChecking = function () {
  const amount = parseCheckingInput()
  const previousAmount = getChecking()
  if (previousAmount - amount <0) {
    console.log('You dont have enough money, you poor person')
  } else{
  setChecking(previousAmount - amount)
  }
}

// Add event listeners
$('#checking-deposit').click(depositChecking)
$('#checking-withdraw').click(withdrawChecking)
