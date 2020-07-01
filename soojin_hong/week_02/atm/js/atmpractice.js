//get balance
const getChecking = function () {
  return parseFloat( $('#checking-balance').text().slice(1));
}

//set balances
const setChecking = function (balance) {
  return $('#checking-balance').text('$'+balance);
}

//check input
const parseCheckingInput = function () {
  const amount = $('#checking-amount').val();
  if ( amount === '' ) {
    console.log( 'you need to input price' )
    return 0;
  } else {
    return parseFloat(amount);
  }
}

// deposit function
const depositChecking = function () {
  const amount = parseCheckingInput();
  const previousAmount = getChecking();
  setChecking(amount + previousAmount) ;
}

// withdraw function
const withdrawChecking = function () {
  const amount = parseCheckingInput();
  const previousAmount = getChecking();
  if (previousAmount - amount < 0 ) {
    console.log( 'You dont have enough money, you poor person' )
  } else {
    setChecking(previousAmount - amount);
  }
}

const redLightOn = function () {
  if ( parseFloat( $('#checking-balance').text().slice(1)) === 0 ) {
    $('#checking-balance').addClass('zero');
  }
}

const redLightOff = function () {
  if ( parseFloat( $('#checking-balance').text().slice(1)) > 0 ) {
    $('#checking-balance').removeClass('zero');
  }
}

//add event listener
$('#checking-deposit').click(depositChecking);
$('#checking-withdraw').click(withdrawChecking).click(redLightOn).click(redLightOff);
