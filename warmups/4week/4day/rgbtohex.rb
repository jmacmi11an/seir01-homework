def rgb_to_hex rgb
	hex = '#'
	rgb.map do |colour|
		hex += decider colour / 16
		hex += decider colour % 16
	end
	hex
end

def decider colour
	if colour > 9
		(55 + colour).chr
	else
		colour.to_s
	end
end

puts rgb_to_hex [255, 255, 255]
puts rgb_to_hex [246, 12, 55]
puts rgb_to_hex [1, 234, 2]