// PRESENTATION / INTERACTION / UI
// this code has no idea about overdraft protection.
// it simply connects DOM elements to the logical/ business functions we find elsewhere.

const render = function () { // updates everything on screen when anything is changed. means it's easier to render screen any time somethings changed.
  $('#checking-balance').text('$' + joel_solution_accounts.checkingBalance);
  $('#savings-balance').text('$' + joel_solution_accounts. savingsBalance);

  $('.zero').removeClass('zero'); // remove class of Zero so that it isn't added if balance > 0

  if (joel_solution_accounts.checkingBalance <= 0) {
    $('#checking-balance').addClass('zero'); // add zero class which is handled by CSS
  };

  if (joel_solution_accounts.savingsBalance <= 0) {
    $('#savings-balance').addClass('zero');
  };
}

$(document).ready(function() {
  render(); // by rendering at the start of the document loading, the amounts are set as red color (as they begin as $0).

  $('#checking-deposit').on('click', function () {
    const amount = $('#checking-amount').val();
    joel_solution_accounts.checkingDeposit(amount);
    // $('#checking-balance').text('$' + joel_solution_accounts.checkignDeposit(amount)); // this will work but there's a lazier way to do it (see render above).
    render();
  });

  $('#checking-withdraw').on('click', function () {
    const amount = $('checking-amount').val();
    joel_solution_accounts.checkingWithdraw(amount);
    render();
  });

  $('#savingsDeposit').on('click', function () {
    const amount = $('#savings-amount').val();
    joel_solution_accounts.savingsDeposit(amount);
    render();
  });

  $('savings-withdraw').on('click', function () {
    const amount = $('#savings-amount').val();
    joel_solution_accounts.savingsWithdraw(amount);
    render();
  });
});
