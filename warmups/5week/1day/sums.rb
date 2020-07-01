# simple sums basic

def s1 num
	# if num.even?
	# 	0
	# else
	# 	1
	# end
	num % 2
end

def s2 num
	(1..num).sum
end

puts s1(4)
puts s2(4)

# bonus, you dont have to understand it fully
def s2_rec num, sum = 0
	if num == 0
		sum
	else
		s2_rec num - 1, sum + num
	end
end

puts s2_rec(4)