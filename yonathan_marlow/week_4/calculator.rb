require 'pry'
require 'rainbow'

# def getFirstNumber
#   print "What is your first input?"
#     num1 = gets.chomp.to_i
#   print "What is your second input?" ## funtion if needed.
#     num2 = gets.chomp.to_i
#   [num1, num2]
# end

def show_menu
  puts "calculator"
  puts "-=" * 40
  puts Rainbow("[a] - addition").red.bright
  puts Rainbow("[s] - substraction").green
  puts Rainbow("[m] - multiplication").aqua
  puts Rainbow("[d] - division").purple.bright
  puts Rainbow("[q] - quit").yellow.bright
  puts Rainbow("[r] - squareroot").gold.bright
  puts Rainbow("[e] - To the power of").brown
  print "Enter your choice: "
end

show_menu()
menu_choice = gets.chomp.downcase

until menu_choice == 'q'
  print "What is your first input?"
    num1 = gets.chomp.to_f
  print "What is your second input?"
    num2 = gets.chomp.to_f
  # values = getFirstNumber()
  # num1 = values[0]   # did with ivan - good way to call the function - calls the array from the function
  # num2 = values[1]
  case menu_choice
  when 'a'
    sum = num1 + num2
    puts "the total sum is #{sum}"#
  when 's'
    sum2 = num1 - num2
    puts "#{num1} minus #{num2} is #{sum2}"
  when 'm'
    multiplier = num1 * num2
    puts "#{num1} times #{num2} is #{multiplier}"
  when 'd'
    divider = num1 / num2
    puts "#{num1} divide #{num2} is #{divider}"
  when 'r'
    puts Math.sqrt(num1)
  when 'e'
    squared = num1 ** num1
    puts "The power of #{num1} is #{squared}"
  else
    puts "Choose a different outcome"
  end
  show_menu
  menu_choice = gets.chomp.downcase
end
