$(document).ready(function () {

    // functions ##################################################################################

    const updateStatus = function () {
        $('#checking-balance').text(`$${checking}`);
        $('#savings-balance').text(`$${savings}`);
        if (checking === 0) {
            $('#checking-balance').addClass('zero');
        }
        if (savings === 0) {
            $('#savings-balance').addClass('zero');
        }
    }

    const getInput = function (fieldId) {
        if (isNaN(parseFloat($(fieldId).val()))) {
            alert("Error: not a number");
            return (false);
        } else {
            return (parseFloat($(fieldId).val()));
        }
    }

    // Global vars

    let checking = 0;
    let savings = 0;

    //Checking ####################################################################################

    $("#checking-deposit").on('click', function () {
        let checkingAmount = getInput('#checking-amount');
        if (checkingAmount) {
            checking += checkingAmount; // TODO add additional validation checks
            $('#checking-balance').text(`$${checking}`);
            if (checking !== 0) {
                $('#checking-balance').removeClass('zero');
            }
        }
    })

    $("#checking-withdraw").on('click', function () {
        let checkingAmount = getInput('#checking-amount');
        if (checkingAmount) {
            if (checkingAmount > checking + savings) { // overdraft protection
                alert("I'm sorry Dave; I'm afraid I can't do that. ");
            } else if (checkingAmount > checking) {
                // subtract as much as can from checking,
                checkingAmount -= checking;
                checking = 0;
                savings -= checkingAmount;
                // then subtract the rest from savings
            } else {
                checking -= checkingAmount;
            }
            updateStatus();
        }
    })

    //Savings ####################################################################################

    $("#savings-deposit").on('click', function () {
        let savingsAmount = getInput('#savings-amount');
        if (savingsAmount) {
            savings += savingsAmount; // TODO add additional validation checks
            $('#savings-balance').text(`$${savings}`);
            if (savings !== 0) {
                $('#savings-balance').removeClass('zero');
            }
        }
    })

    $("#savings-withdraw").on('click', function () {
            let savingsAmount = getInput('#savings-amount');
            if (savingsAmount) {
                if (savingsAmount > checking + savings) { // overdraft protection
                    alert("I'm sorry Dave; I'm afraid I can't do that. ");
                } else if (savingsAmount > savings) {
                    // subtract as much as can from checking,
                    savingsAmount -= savings;
                    savings = 0;
                    checking -= savingsAmount;
                    // then subtract the rest from savings
                } else {
                    savings -= savingsAmount;
                }
                updateStatus();
            }
            })
})