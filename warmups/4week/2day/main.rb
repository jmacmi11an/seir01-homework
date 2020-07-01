def raindrops num
	out = ''
	out += 'Pling' if num % 3 == 0
	out += 'Plang' if num % 5 == 0
	out += 'Plong' if num % 7 == 0

	# if out.size > 0
	# 	out
	# else
	# 	num.to_s
	# end

	out.size > 0 ? out : num.to_s
end

# ternaries
# question ? true : false

puts raindrops 3
puts raindrops 5
puts raindrops 7
puts raindrops 3 * 5 * 7
puts raindrops 34
puts raindrops gets.chomp.to_i