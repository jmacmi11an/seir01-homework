// Get value
const getAmount = function (type) {
  return parseFloat($(`#${type}-balance`).text().slice(1)); 
  }

// Set value
const setBalance = function (balance, type) {
  $(`#${type}-balance`).text('$' + balance)
  ifZero(`${type}`);
}
  
// Parse user input and evaluating
const parseInput = function (type) {
  const amount = $(`#${type}-amount`).val()
  if (amount === '') {
    console.log('Please input a price')
    return 0;
  } else  if (!$.isNumeric(amount)) {
    console.log('You need to input an number')
    return 0;
  } if (amount < 0){
    console.log('You need to input a positive number')
    return 0;
  }else {
    return parseFloat(amount)
  }
}

// Deposit function
const deposit = function (param) {
  const amount = parseInput(param.data.accName1)
  const previousAmount = getAmount(param.data.accName1)
  setBalance(amount + previousAmount, param.data.accName1)
}

// Withdraw function
const withdraw = function (param) {
  const amount = parseInput(param.data.accName1)
  const previousAmount = getAmount(param.data.accName1)
  if (previousAmount - amount < 0) { //Withdraw more than balance
    console.log('You dont have enough money in the account, you poor person')
    const otherAccount = getAmount(param.data.accName2)
    if (otherAccount < amount-previousAmount){//Withdraw more than sum of both account balance.
      console.log('Not enough money in both accounts.')
    } else {//Withdraw from another account.
      setBalance(0 , param.data.accName1)
      setBalance(otherAccount - (amount-previousAmount), param.data.accName2)
    }
  } else {//Withdraw from the account.
    setBalance(previousAmount - amount, param.data.accName1)
  }
}

//Change background color
const ifZero = function(type){
  if (getAmount(type) === 0){ //Change to red if balance is zero.
    $(`#${type}-balance`).removeAttr('class');
    $(`#${type}-balance`).attr('class', 'zero')
  } else { //Change to gray color if balance is more than zero.
    $(`#${type}-balance`).removeAttr('class');
    $(`#${type}-balance`).attr('class', 'balance')
  }
}

// Event listeners
$('#checking-deposit').click({accName1: "checking"},deposit);
$('#checking-withdraw').click({accName1: "checking", accName2: "savings"},withdraw);
$('#savings-deposit').click({accName1: "savings"},deposit);
$('#savings-withdraw').click({accName1: "savings", accName2: "checking"},withdraw);
