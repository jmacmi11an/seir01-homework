def longest num, long = 0, best = 0

	return best if num == 1

	converted = num.to_s(2)
	zero_count = 0

	converted.split('').each do |x|
		if x == '0'
			zero_count += 1
		else
			if long < zero_count
				long = zero_count
				best = num
				puts converted, num, long, best, '========'
			end
			zero_count = 0
		end
	end

	longest(num - 1, long, best)
end

puts longest 100