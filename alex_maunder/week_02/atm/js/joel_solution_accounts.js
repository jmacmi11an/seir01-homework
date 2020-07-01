// LOGIC

// Our accounts object is solely concerned with the rules of the bank (ie can't have negative balance, overdraft etc) - easier than having to work with DOM stuff at the same time.
// In this case, it's good to split into a separate files so you don't have to be constantly converting the jQuery (which are strings) into numerical, then back to strings.
// This will be the source of truth for current balances.
// It will know how to do overdraft protection.
// This file will have no idea about the DOM

const accounts = {
  checkingBalance: 0,
  savingsBalance: 0,

  total: function () { // gives us live balance by calling this function.
    return this.checkingBalance + this.savingsBalance;
  },

  checkingDeposit: function (amount) {
    this.checkingBalance += Number(amount);
  },

  checkingWithdraw: function (amount) {
    if (this.checkingBalance >= amount) {
      this.checkingBalance -= Number(amount);
    } else if (amount <= this.total()) {
      const difference = amount - this.checkingBalance;
      this.checkingBalance = 0;
      this.savingsBalance -= difference;
    };
  },

  savingsDeposit: function (amount) {
    this.savingsBalance += Number(amount);
  },

  savingsWithdraw: function (amount) {
    if (this.savingsBalance >= amount) {
      this.savingsBalance -= Number(amount);
    } else if (amount <= this.total()) {
      const difference = amount - this.savingsBalance;
      this.savingsBalance = 0;
      this.checkingBalance -= difference;
    };
  }

};
