# def mutation correct, bad
# 	nice_print = ''
# 	mistakes = 0
# 	correct.split('').map.with_index do |x, i|
# 		if x == bad[i]
# 			nice_print += ' '
# 		else
# 			nice_print += '^'
# 			mistakes += 1
# 		end
# 	end
# 	puts "#{mistakes} mutations in total"
# 	puts correct, bad, nice_print
# end

def mutation correct, bad
	differences = correct.split('').map.with_index { |x, i| x != bad[i] }
	puts "#{differences.count true} mutations in total"
	puts correct, bad
	puts differences.map { |x| x ? '^' : ' ' }.join
end

mutation 'GAGCCTACTAACGGGAT', 'CATCGTAATGACGGCCT'