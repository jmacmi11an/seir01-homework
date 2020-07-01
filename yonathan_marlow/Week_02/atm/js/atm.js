// // Get value for checking
// const getChecking = function () {
//   return parseFloat($('#checking-balance').text().slice(1))
// }
//
// // Set value for checking
// const setChecking = function (balance) {
//   $('#checking-balance').text('$' + balance)
// }
//
// // Parse user input
// const parseCheckingInput = function () {
//   const amount = $('#checking-amount').val()
//   if (amount === '') {
//     console.log('You need to input a price')
//     return 0;
//   } else {
//     return parseFloat(amount)
//   }
// }
//
// // Deposit function
// const depositChecking = function () {
//   const amount = parseCheckingInput()
//   const previousAmount = getChecking()
//   setChecking(amount + previousAmount)
//   if (getChecking() === 0) {
//     $('#checking-balance').addClass('zero');
//   } else {
//     $('#checking-balance').removeClass('zero');
//   }
// }
//
// // Withdraw function
// const withdrawChecking = function () {
//   const amount = parseCheckingInput()
//   const previousAmount = getChecking()
//   let amountToBeCharged = ''
//   if (previousAmount - amount < 0) {
//     //do you have enough money in savings to compensate.
//     //if yes = do substraction operation
//     if  (getChecking() + getSavings() >= amount) {
//
//
//     }
//     //if not log the below.
//     console.log('You dont have enough money, you poor person')
//   } else {
//     setChecking(previousAmount - amount)
//   }
//   if (getChecking() === 0) {
//     $('#checking-balance').addClass('zero');
//   } else {
//     $('#checking-balance').removeClass('zero');
//   }
// }
//
// // Get value for savings
// const getSavings = function () {
//   return parseFloat($('#savings-balance').text().slice(1))
// }
//
// // Set value for savings
// const setSavings = function (balance) {
//   $('#savings-balance').text('$' + balance)
// }
//
// // Parse user input
// const parseSavingsInput = function () {
//   const amount = $('#savings-amount').val()
//   if (amount === '') {
//     console.log('You need to input a price')
//     return 0;
//   } else {
//     return parseFloat(amount)
//   }
// }
//
// // Deposit function
// const depositSavings = function () {
//   const amount = parseSavingsInput()
//   const previousAmount = getSavings()
//   setSavings(amount + previousAmount)
//   if (getSavings() === 0) {
//     $('#savings-balance').addClass('zero');
//   } else {
//     $('#savings-balance').removeClass('zero');
//   }
// }
//
// // Withdraw function
// const withdrawSavings = function () {
//   const amount = parseSavingsInput()
//   const previousAmount = getSavings()
//   if (previousAmount - amount < 0) {
//     console.log('You dont have enough money, you poor person')
//   } else {
//     setSavings(previousAmount - amount)
//   }
//   if (getSavings() === 0) {
//     $('#savings-balance').addClass('zero');
//   } else {
//     $('#savings-balance').removeClass('zero');
//   }
// }
//
//
//
// // Add event listeners
// $('#savings-deposit').click(depositSavings)
// $('#savings-withdraw').click(withdrawSavings)
// $('#checking-deposit').click(depositChecking)
// $('#checking-withdraw').click(withdrawChecking)
//


// $(document).ready(function(){
//   // checking deposit
//   $("#checkingDeposit").on("click", function(){
//     var deposit = parseInt($("#checkingInput").val())
//     var balance = parseInt($(".checking.balance").text().replace("$", ""))
//     var newBalance = "$" + (balance + deposit)
//     $(".checking.balance").text(newBalance)
//   })
//   // checking withdrawal /w overdraft protection
//   $("#checkingWithdraw").on("click", function(){
//     var withdraw = parseInt($("#checkingInput").val())
//     var checkingBalance = parseInt($(".checking.balance").text().replace("$", ""))
//     var savingsBalance = parseInt($(".savings.balance").text().replace("$", ""))
//     var totalBalance = checkingBalance + savingsBalance
//     if((checkingBalance - withdraw) > 0){
//       var newBalance = "$" + (checkingBalance - withdraw)
//       $(".checking.balance").text(newBalance)
//     }
//     else if((totalBalance - withdraw) > 0){
//       var overDraft = withdraw - checkingBalance
//       $(".checking.balance").text("$0")
//       var newSavingsBalance = "$" + (savingsBalance - overDraft)
//       $(".savings.balance").text(newSavingsBalance)
//     }
//   })
//   // savings deposit
//   $("#savingsDeposit").on("click", function(){
//     var deposit = parseInt($("#savingsInput").val())
//     var balance = parseInt($(".savings.balance").text().replace("$", ""))
//     var newBalance = "$" + (balance + deposit)
//     $(".savings.balance").text(newBalance)
//   })
//   // savings withdraw
//   $("#savingsWithdraw").on("click", function(){
//     var withdraw = parseInt($("#savingsInput").val())
//     var savingsBalance = parseInt($(".savings.balance").text().replace("$", ""))
//     if((savingsBalance - withdraw) > 0){
//       var newBalance = "$" + (savingsBalance - withdraw)
//       $(".savings.balance").text(newBalance)
//     }
//   })
// })

// // Add event listeners
// $('#savings-deposit').click(depositSavings)
// $('#savings-withdraw').click(withdrawSavings)
// $('#checking-deposit').click(depositChecking)
// $('#checking-withdraw').click(withdrawChecking)

//NEW WAY JOEL SHOWED US:

$(document).ready(function (){
  $('#checking-deposit').on('click', function () {
    // need to fetch deposit amountToBeCharged
    const deposit = $('@checking-amount').val();
    // fetch the current newBalance
    const balance = $('checking-balance').text().slice(1);// slice stripps the $ sign.
    // add deposit + newBalance
    const newBalance = Number(balance) + Number(deposit)
    // update page.
    $('#checking-balance').text('$' + newBalance);
  })
})
