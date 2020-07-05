const reverse = function (arr) {
	const out = [];
	for (let i = arr.length - 1; i >= 0; i--) {
		out.push(arr[i]);
	}
	return out;
};

const flatten = function (arr) {
	let out = [];
	arr.forEach(function (el) {
		if (Array.isArray(el)) {
			out = out.concat(el);
			// out = [...out, ...el]; // you dont have to get that yet
		} else {
			out.push(el);
		}
	});
	return out;
};

const flattenBonus = function (arr, out = []) {
	arr.forEach(function (el) {
		if (Array.isArray(el)) {
			flattenBonus(el, out);
		} else {
			out.push(el);
		}
	});
	return out;
};

console.log(reverse([1, 2, 3, 4]));
console.log(flatten(['Hello', ['World', 42]]));
console.log(
	flattenBonus([
		'hello',
		[
			[true, false, true],
			'world',
			42,
			[1, 2, ['a', 'b', ['A', [0, 1, 2], 'C']]],
		],
	]),
);
