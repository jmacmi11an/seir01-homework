$(document).ready( function () {

let check = 0; //Balance in the accounts.
let save = 0;
let overdraft = 0;

//Checking account!

$('#checking-deposit').on('click', function () {
  check = check + parseInt( $('#checking-amount').val() ); // Converts the input string into an integer and deposits it.
  $('#checking-balance').text( '$' + check ); // Updates account balance.
  if (check > 0) {
    $('#checking-balance').removeClass('zero'); // Removes the red background when balance is 0.
  };
})


$('#checking-withdraw').on('click', function () {
  if ( parseInt( $('#checking-amount').val() ) > check ) {
    if ( parseInt( $('#checking-amount').val() ) > (check + save) ) {
      alert('Insufficient funds!'); // Can't withdraw when there's no money.
    } else {
    overdraft = $('#checking-amount').val() - check; // Otherwise take money from savings.
    save = save - overdraft
    check = 0;
    $('#checking-balance').text( '$' + check ); //Update the accounts balance.
    $('#savings-balance').text( '$' + save );
    }
  } else {
  check = check - parseInt( $('#checking-amount').val() ); // Normal account withdrawal.
  $('#checking-balance').text( '$' + check );
  };

  if (check === 0) {
    $('#checking-balance').addClass('zero'); // Adds red background when balance is 0.
  };
})


// Savings account!

$('#savings-deposit').on('click', function () {
  save = save + parseInt( $('#savings-amount').val() );
  $('#savings-balance').text( '$' + save );

  if (save > 0) {
    $('#savings-balance').removeClass('zero');
  };

})

$('#savings-withdraw').on('click', function () {
  if ( parseInt( $('#savings-amount').val() ) > save ) {
    if ( parseInt( $('#savings-amount').val() ) > ( check + save ) ) {
      alert('Insufficient funds!');
    } else {
    overdraft = $('#savings-amount').val() - save;
    check = check - overdraft
    save = 0;
    $('#savings-balance').text( '$' + save );
    $('#checking-balance').text( '$' + check );
    }
  } else {
    save = save - parseInt( $('#savings-amount').val() );
    $('#savings-balance').text( '$' + save );
  }

  if (save === 0) {
    $('#savings-balance').addClass('zero');
  };

})
})
