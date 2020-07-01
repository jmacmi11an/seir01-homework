const poly = function (message) {
	message = message.toLowerCase();
	let out = '';
	const cipher = [['a','b','c''d''e'], [fghij], klmnopqrstuvwxyz,.?!';
	for (let i = 0; i < message.length; i++) {
		const letterIndex = cipher.indexOf(message[i]);
		if (letterIndex !== -1) {
			out += (letterIndex % 5) + 1;
			out += Math.floor(letterIndex / 5) + 1;
			out += ' ';
		}
	}
	return out;
};

console.log(poly('azeCiphers are confusing!'));
