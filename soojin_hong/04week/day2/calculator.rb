# require 'pry'
def show_menu
  puts "Calculator"
  puts "-+" * 20 #El cheapo horizontal dividing line
  puts "[a] - addition"
  puts "[s] - subtraction"
  puts "[m] - multiplication"
  puts "[d] - division"
  puts "[e] - exponents"
  puts "[r] - square roots"
  puts "[q] - quit"
  print "Enter your choice: "
end

show_menu
menu_choice = gets.chomp.downcase

until menu_choice == 'q'

    print "Enter first number: "
    num1 = gets.to_i

    print "Enter second number: "
    num2 = gets.to_i

  case menu_choice
  when 'a'
    puts "#{ num1 } + #{ num2 } = #{ num1 + num2 }"

  when 's'
    puts "#{ num1 } - #{ num2 } = #{ num1 - num2 }"

  when 'm'
    puts "#{ num1 } * #{ num2 } = #{ num1 * num2 }"

  when 'd'
    puts "#{ num1 } / #{ num2 } = #{ num1 / num2 }"

  when 'e'
    puts "#{ num1 } ** #{ num2 } = #{ num1 ** num2 }"

  when 'r'
    puts "Square root for #{ num1 } = #{ Math.sqrt(num1).to_i }" # no need to ask num2

  else
    puts "Sorry, We don't have that function." # no need to ask num1/num2
  end
# binding.pry
  show_menu
  menu_choice = gets.chomp.downcase
end

puts "Thanks for using Ruby calculator!"
