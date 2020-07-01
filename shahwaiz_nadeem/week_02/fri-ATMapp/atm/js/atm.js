$(document).ready(function () {

  // Checking account
  // #######################################################
  const getChecking = function() {
    return parseFloat($('#checking-balance').text().slice(1));
  }

  const setChecking = function(balance) {
    $('#checking-balance').text(`$${balance}`);
  }

  const parseCheckingInput = function() {
    return parseFloat($('#checking-amount').val());
  }

  const depositChecking = function() {
    clearErrors();
    let original = getChecking();
    let updated = original + parseCheckingInput();
    setChecking(updated);
    checkZero();
  }

  const withdrawChecking = function() {
    clearErrors();
    let original = getChecking();
    if (getChecking() >= parseCheckingInput()){
      let updated = original - parseCheckingInput();
      setChecking(updated);
    } else if (getChecking() + getSavings() >= parseCheckingInput()){
      setSavings(getSavings() - (parseCheckingInput() - getChecking()));
      setChecking(0);

    } else {
      $('#checking').append($('<p>').text("You have insufficient funds for this withdrawal"));
    }
    checkZero();
  }

  const clearErrors = function() {
    $('p').remove();
  }





  //Savings account
  //############################################################

  const getSavings = function() {
    return parseFloat($('#savings-balance').text().slice(1));
  }

  const setSavings = function(balance) {
    $('#savings-balance').text(`$${balance}`);
  }

  const parseSavingsInput = function() {
    return parseFloat($('#savings-amount').val());
  }

  const depositSavings = function() {
    clearErrors();
    let original = getSavings();
    let updated = original + parseSavingsInput();
    setSavings(updated);
    checkZero();
  }

  const withdrawSavings = function() {
    clearErrors();
    let original = getSavings();
    if (getSavings() >= parseSavingsInput()){
      let updated = original - parseSavingsInput();
      setSavings(updated);
    } else {
      $('#savings').append($('<p>').text("You have insufficient funds for this withdrawal"));
    }
    checkZero();
  }


  //GENERAL functions
  //###########################################################
  const checkZero = function() {
    if(getChecking() === 0) {
      $('#checking-balance').addClass('zero');
    } else {
      $('#checking-balance').removeClass('zero');
    }
    if(getSavings() === 0) {
      $('#savings-balance').addClass('zero');
    } else {
      $('#savings-balance').removeClass('zero');
    }
  }


  //ACTIVATORS
  //#########################################################
  $('#checking-deposit').on('click', depositChecking);
  $('#checking-withdraw').on('click', withdrawChecking);
  $('#savings-deposit').on('click', depositSavings);
  $('#savings-withdraw').on('click', withdrawSavings);
});
