$(document).ready(function () {

  let checkingBalance = 0;
  let savingsBalance = 0;


  // Get checking balance
  const getCheckingBalance = function () {
    return parseFloat($('#checking-balance').text().slice(1));
  }

  // Set checking balance
  const setCheckingBalance = function (amount) {
    if (checkingBalance + savingsBalance === 0) {
      $('#checking-balance').css('background-color', 'red')
    } else {
      $('#checking-balance').css('background-color', 'grey')
    }
    $('#checking-balance').text('$' + amount);
  }

  // Get checking amount
  const getCheckingAmount = function () {
    const amount = $('#checking-amount').val();
    if (amount === '') {
      console.log('Not an amount')
      return checkingBalance
    } else {
      return parseFloat(amount)
    }
  }

  // Set checking amount (deposit to checking)
  const setCheckingAmount = function () {
      let current = getCheckingBalance()
      let deposit = getCheckingAmount()
      checkingBalance = current + deposit
      return setCheckingBalance(checkingBalance)
  };

  // event handler
  $('#checking-deposit').click(setCheckingAmount);

  // Set withdraw amount
  const setWithdrawAmount = function () {
    let current = getCheckingBalance()
    let deposit = getCheckingAmount()
    if (checkingBalance + savingsBalance - deposit < 0) { // check if enough funds in both
      console.log('not enought overdraft')
      return
    } else if (checkingBalance - deposit >= 0) { // just withdraw from checking account
      checkingBalance = current - deposit
    } else {                                    // withdraw from both accounts
      savingsBalance += (checkingBalance - deposit)
      checkingBalance = 0
      $('#savings-balance').text('$' + savingsBalance);
    };
    return setCheckingBalance(checkingBalance)
  }

  // event handler
  $('#checking-withdraw').click(setWithdrawAmount);

  // Get savings balance
  const getSavingsBalance = function () {
    return parseFloat($('#savings-balance').text().slice(1));
  }

  // Set savings balance
  const setSavingsBalance = function (amount) {
    if (savingsBalance === 0) {
      $('#savings-balance').css('background-color', 'red')
    } else {
      $('#savings-balance').css('background-color', 'grey')
    }
    $('#savings-balance').text('$' + amount);
  }

  // Get savings amount
  const getSavingsAmount = function () {
    const amount = $('#savings-amount').val();
    if (amount === '') {
      console.log('Not an amount')
      return savingsBalance
    } else {
      return parseFloat(amount)
    }
  }

  // Set savings amount (deposit to savings)
  const setSavingsAmount = function () {
      let current = getSavingsBalance()
      let deposit = getSavingsAmount()
      savingsBalance = current + deposit
      return setSavingsBalance(savingsBalance)
  };

  // event handler
  $('#savings-deposit').click(setSavingsAmount);

  // Set withdraw amount
  const setSavingsWithdrawAmount = function () {
    let current = getSavingsBalance()
    let deposit = getSavingsAmount()
    if (checkingBalance + savingsBalance - deposit < 0) { // check if enough funds in both
      console.log('not enought overdraft')
      return
    } else if (savingsBalance - deposit >= 0) { // just withdraw from checking account
      savingsBalance = current - deposit
    } else {                                    // withdraw from both accounts
      checkingBalance += (savingsBalance - deposit)
      savingsBalance = 0
      $('#checking-balance').text('$' + checkingBalance);
    };
    return setSavingsBalance(savingsBalance)
  }

  // event handler
  $('#savings-withdraw').click(setSavingsWithdrawAmount);


});
