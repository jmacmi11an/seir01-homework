require 'rainbow'

def show_menu
  puts "Calculator"
  puts "-=" * 40 # El Cheapo horizontal dividing line
  puts Rainbow("[a] - addition").red.bright
  puts Rainbow("[s] - subtraction").blue.bright
  puts Rainbow("[x] - multiply").green.bright
  puts Rainbow("[d] - divide").purple.bright
  puts Rainbow("[q] - quit").orange.bright
  print "Enter you choice: "
end

show_menu
menu_choice = gets.chomp.downcase

print Rainbow("What is your first input?: ").yellow.bright
num1 = gets.chomp.to_i

print Rainbow("What is your second input?: ").cyan.bright
num2 = gets.chomp.to_i

until menu_choice == 'q'
  # do calculating: TODO: homework goes here
  case menu_choice
  when 'a'
    sum = num1 + num2
      puts Rainbow("#{num1} + #{num2} is equal to #{sum}").red.bright  # Do actual addition here
  when 's'
    subtract = num1 - num2
      puts Rainbow("#{num1} - #{num2} is equal to #{subtract}").green.bright
  when 'x'
    multiply = num1 * num2
      puts Rainbow("#{num1} multiplied by #{num2} is #{multiply}").purple.bright 
  when 'd'
    divide = num1 / num2
      puts "#{num1} / #{num2} is equal to #{divide}"

  else
    puts "Invalid selection. You idiot"

  end


  show_menu
  menu_choice = gets.chomp.downcase
end


puts "Thanks for using my crappy calculator"