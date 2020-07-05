const sieve = {
	primes: [],
	list: [],
	calc: function (num) {
		this.list = Array(num).fill(true);
		for (let i = 2; i <= num; i++) {
			for (let j = i * i; j <= num; j++) {
				if (this.list[j] === true && j % i === 0) {
					this.list[j] = false;
				}
			}
		}
		for (let i = 2; i < this.list.length; i++) {
			if (this.list[i]) {
				this.primes.push(i);
			}
		}
		return this.primes;
	},
};

console.log(sieve.calc(20));

const sieve2 = function (limit) {
	let nums = [...Array(limit + 1).keys()].slice(2);
	let primes = [];

	while (nums.length) {
		let n = nums.shift(); //take out first element
		primes.push(n); //push to list of primes
		nums = nums.filter((m) => m % n); //remove multiples from remaining nums
	}
	return primes;
};

console.log(sieve2(20));
