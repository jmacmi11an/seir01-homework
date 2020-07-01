memory = []
guessed = true

while guessed
	memory.push rand 1..4
	puts memory.join ' '
	sleep 1
	puts `clear`
	memory.map do |x|
		if x == gets.to_i
			puts `clear`
		else
			guessed = false
			break
		end
	end
end

# puts "wowowowo you got #{memory.size}"
puts memory.size > 5 ? "Hot digidi damn you got #{memory.size}" : "Huh, lame. You got #{memory.size}"