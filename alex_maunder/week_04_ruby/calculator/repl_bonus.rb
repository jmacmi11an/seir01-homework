# # Bonus Challenge
#
# ## Do-It-Yourself Ruby REPL
#
# Try to create your own Ruby REPL (Read Evaluate Print Loop) program.
#
# It should show a prompt, read some Ruby code from the user, `eval`uate their code, print the result and loop back to the start.
#
# ### Sample Session
#
# ```
# $ ruby repl.rb
# Welcome to Ruby REPL
# > 2 + 7
# 9
# > "some" + "string"
# "somestring"
# >
# ```

puts "Welcome to Ruby REPL"
print "> "
us_inp = gets.chomp.split(" ").reject(&:empty?) #.map(&:to_i)

if us_inp == ''
  print "> "
end

if us_inp == 'exit'
  puts "Thanks for using Ruby REPL"
end

out_str = ''
int_count = 0
out_int = 0
puts us_inp

# def is_i?
#    !!(self =~ /\A[-+]?[0-9]+\z/)
# end

for each in us_inp
  if each !!(/\A[-+]?[0-9]+\z/)
    out_int += each.to_i
    int_count += 1
  if each.include?'"'
    out_str += each
  end
end

if out_str != '' && int_count > 0
  puts "Strings can't be coerced into integers"
elsif out_str != ''
  puts out_str
else
  puts out_int
end
end
