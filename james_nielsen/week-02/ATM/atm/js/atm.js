
// ---------- Checking ---------- //
//Keep track of the checking and savings balances somewhere
//console.log('hello fuckhead')


//get checking baclance
const getChecking = function(){
  return parseFloat($('#checking-balance').text().slice(1))
}

//set value checking

const setChecking = function (balance){
  $('#checking-balance').text('$' + balance);
}


// parse use input
  const parseCheckingInput = function(){
  const amount = $('#checking-amount').val()
  if(amount === ''){
    alert("you must put in a value")
    return 0;
  } else {
    return parseFloat(amount)
  }
}


// desposit function
const depositChecking = function (){
  const amount = parseCheckingInput()
  const previousAmount = getChecking()
  setChecking(amount + previousAmount)
  if (getChecking() === 0){
    $('#checking-balance').addClass('zero');
  } else {
    $('#checking-balance').removeClass('zero');
  }
}

//withdraw function

const withdrawChecking = function (){
  const amount = parseCheckingInput()
  const previousAmount = getChecking()
  if (previousAmount - amount < 0){
    alert('You are too poor')
  } else {
    setChecking(previousAmount - amount)
  }
  if (getChecking() === 0){
    $('#checking-balance').addClass('zero');
  } else {
    $('#checking-balance').removeClass('zero');
  }
}


//add event listeners

$('#checking-deposit').click(depositChecking)
$('#checking-withdraw').click(withdrawChecking)


//-------- Savings Account --------- //

//get Savings balance
const getSavings = function(){
  return parseFloat($('#savings-balance').text().slice(1))
}

//set value saving

const setSavings = function (balance1){
  $('#savings-balance').text('$' + balance1);
}


// parse use input
  const parseSavingsInput = function(){
  const amount1 = $('#savings-amount').val()
  if(amount1 === ''){
    alert("you must put in a value")
    return 0;
  } else {
    return parseFloat(amount1)
  }
}

// desposit function
const depositSavings = function (){
  const amount1 = parseSavingsInput()
  const previousAmount1 = getSavings()
  setSavings(amount1 + previousAmount1)
}

//withdraw function with low 

const withdrawSavings = function (){
  const amount1 = parseSavingsInput()
  const previousAmount1 = getSavings()
  if (previousAmount1 - amount1 < 0){
    alert('You are too poor')
  } else {
    setSavings(previousAmount1 - amount1)
  }
  if (getSavings() === 0){
    $('#savings-balance').addClass('zero');
  } else {
    $('#savings-balance').removeClass('zero');
  }
}

//add event listeners

$('#savings-deposit').click(depositSavings)
$('#savings-withdraw').click(withdrawSavings)
