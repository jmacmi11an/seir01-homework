# # Calculator
#
# ### Explanation
# - You will be building a calculator.  A calculator can perform multiple arithmetic operations.  Your function should allow the user to choose which operation is expected, enter in the values to perform the operation on, and ultimately view the result.
#
# ### Specification:
# - A user should be given a menu of operations
# - A user should be able to choose from the menu
# - A user should be able to enter numbers to perform the operation on
# - A user should be shown the result
# - This process should continue until the user selects a quit option from the menu
#
# #### Phase 1
# - Calculator functionality
# - Calculator should be able to do basic arithmetic (+,-, *, /)
#
# #### Phase 2
# - Advanced Calculator functionality
# - Calculator should be able to do basic arithmetic (exponents, square roots)
#


require 'pry'

def show_menu
  puts "-=" * 40
  puts "Calculator" # to do - use the ruby center method to center this in the console.
  puts "-=" * 40
  puts "[a] - addition"
  puts "[b] - subtract"
  puts "[c] - multiply"
  puts "[d] - divide"
  puts "[e] - exponent"
  puts "[f] - square root"
  puts "[q] - quit"
  print "Enter your choice: "
end

show_menu
menu_choice = gets.chomp.downcase

until menu_choice == 'q' # unless q is selected, continue to loop
  puts "\n"
  # do calculating here
  puts case menu_choice
  when 'a'
    puts "Enter the numbers you want to add separated by a comma: "
    add = gets.chomp.split(/,/).reject(&:empty?).map(&:to_i) # allows any amount of input as long as it's separated by , (no space)
    "The sum of #{add} is #{add.sum}"
  when 'b'
    puts "Enter the numbers you want to subtract separated by a comma: "
    minus = gets.chomp.split(/,/).reject(&:empty?).map(&:to_i)
    neg = 0
    for each in minus do
      neg -= each.to_i
    end
    "The subtraction is #{neg}"
  when 'c'
    puts "Enter the numbers you want to multiply separated by a comma: "
    multiply = gets.chomp.split(/,/).reject(&:empty?).map(&:to_i)
    first = multiply[0]
    for each in multiply[1..]
      first *= each
    end
    "The multiplication is #{first}"
  when 'd'
    puts "Enter the numbers you want to divide separated by a comma: "
    divide = gets.chomp.split(/,/).reject(&:empty?).map(&:to_f)
    first = divide[0]
    for each in divide[1..]
      first /= each
    end
    "The division is #{first}"
  when 'e'
    puts "Enter the number you want to find the exponent of, followed by the exponent (separated by a comma): "
    exponent = gets.chomp.split(/,/).reject(&:empty?).map(&:to_f)
    first = exponent[0]
    exp = exponent[1]
    "#{first} to the power of #{exp} is #{first ** exp}"
  when 'f'
    puts "Enter the number you want to find the square root of: "
    sq_rt = gets.chomp.split(/,/).reject(&:empty?).map(&:to_i)
    "The square root of #{sq_rt[0]} is #{Math.sqrt(sq_rt[0])}"
  else
    "Invalid selection, idiot."
    # binding.pry
  end

  # show the menu
  puts "\n\n"
  show_menu
  # get the user choice
  menu_choice = gets.chomp.downcase

end

puts "Thanks for using crappy Calc."
