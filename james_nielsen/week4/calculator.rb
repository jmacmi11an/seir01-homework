# #show menu
require 'rainbow'

def show_menu
  # puts "calculator"
  puts "-=" * 40 #El Cheapo horizontal dvivide
  puts Rainbow("[a] - addition").color(255,127,127)
  puts Rainbow("[s] - subtraction").color(255,207,127)
  puts Rainbow("[d] - division").color(127,255,127)
  puts Rainbow("[m] - multiplication").color(127,176,255)
  puts Rainbow("[r] - squareroot (enter the number you wish to square for both num1 and num2)").color(174,127,255)
  puts Rainbow("[^] - the power of (num1 is base number, num2 is power of number)").color(255,89,194)
  puts Rainbow("[q] - quit").color(229,229,229)
  print "enter your choice: "
end

show_menu() #this is a function but dnt need paratheses
menu_choice = gets.chomp.downcase

# get the user choice
until menu_choice =='q'
  #getting input numbers
  puts "Enter first number: "
  num1 = gets.chomp.to_f
  puts "Enter second number: "
  num2 = gets.chomp.to_f
  case menu_choice
  when 'a'
    puts "The " + Rainbow("answer").color(0,255,0) + " is " + Rainbow("#{num1 + num2}").color(255,0,0)
  when 's'
    puts "The " + Rainbow("answer").color(0,255,0) + " is " + Rainbow("#{num1 - num2}").color(255,0,0)
  when 'd'
    puts "The " + Rainbow("answer").color(0,255,0) + " is " + Rainbow("#{num1 / num2}").color(255,0,0)
  when 'm'
    puts "The " + Rainbow("answer").color(0,255,0) + " is " + Rainbow("#{num1 * num2}").color(255,0,0)
  when 'r'
    puts "The " + Rainbow("answer").color(0,255,0) + " is " + Rainbow("#{Math.sqrt(num1)}").color(255,0,0)
  when '^'
    puts "The " + Rainbow("answer").color(0,255,0) + " is " + Rainbow("#{num1 ** num2}").color(255,0,0)
  else
    puts Rainbow("Your choice of sum was an invalid selection.").color(255,0,0).underline
end

show_menu
menu_choice = gets.chomp.downcase
end

puts "Thanks for using my calculator"
