require 'pry'
require 'rainbow'


def show_menu
  puts "Calculator"
  puts "-=" * 40 # El cheapo horizontal dividing line
  puts "[a] - addition"
  puts "[s] - subtraction"
  puts "[m] - multiplicaiton"
  puts "[d] - division"
  puts "[e] - exponents"
  puts "[r] - square root"
  puts "[mortgage] - mortgage calculator"
  puts "[bmi] - BMI"
  puts "[q] - quit"
  print "Enter your choice: "
end

show_menu
menu_choice = gets.chomp.downcase



def exponents
  print "Enter the value of base: "
  base = gets.to_f
  print "Enter the value of power: "
  power = gets.to_f
  print "#{ base } ^ #{ power } = "
  puts base ** power
end


def square_Roots
  print "Enter a positive number: "
  val = gets.to_f
  print "sqrt(#{ val }) = "
  puts Math.sqrt(val)
end


def mortgage
  print "Enter principal loan amount: "
  p = gets.to_f # principal
  print "Enter annual interest rate(%): "
  annual_Interest_Rate = gets.to_f / 100
  i = annual_Interest_Rate / 12 # monthly rate
  print "Enter years of loan: "
  years = gets.to_f
  n = years * 12 # numbers of payments
  mortgage_Repayment = p*(i*(1+i)**n)/((1+i)**n-1)
  puts "Your monthly repayment is $#{ mortgage_Repayment }."
end


def bmi
  print "Enter your weight(kg): "
  weight = gets.to_f
  print "Enter your height(m): "
  height = gets.to_f
  body_Mass_Index = weight / (height * height)
  puts "Your BMI is #{ body_Mass_Index }."
end


# show menu
# get the user choice

until menu_choice == 'q'
  case menu_choice
  when 'a'
    print "Enter your first number: "
    val1 = gets.to_f
    print "Enter your second number: "
    val2 = gets.to_f
    print "#{ val1 } + #{ val2 } = "
    puts val1 + val2 # TODO: actual addition here
  when 's'
    print "Enter your first number: "
    val1 = gets.to_f
    print "Enter your second number: "
    val2 = gets.to_f
    print "#{ val1 } - #{ val2 } = "
    puts val1 - val2
  when 'm'
    print "Enter your first number: "
    val1 = gets.to_f
    print "Enter your second number: "
    val2 = gets.to_f
    print "#{ val1 } * #{ val2 } = "
    puts val1 * val2
  when 'd'
    print "Enter your first number: "
    val1 = gets.to_f
    print "Enter your second number: "
    val2 = gets.to_f
    print "#{ val1 } / #{ val2 } = "
    puts val1 / val2
  when 'e'
    exponents
  when 'r'
    square_Roots
  when 'mortgage'
    mortgage
  when 'bmi'
    bmi
  else
    puts "Invalid selection. You idiot."
  end

  show_menu
  menu_choice = gets.chomp.downcase
end


binding.pry # pause the program at this line INSIDE pry
puts "Thanks for using crappy calculator!"
