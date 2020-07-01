require 'rainbow'
#
#
# puts "Welcome to the BMI calculator.  When prompted please input your height and weight"
# puts Rainbow("Please input your weight (kg): ").green
# weight = gets.chomp.to_f
# puts Rainbow("please enter your height (cm): ").blue
# height = (((gets.chomp.to_f)/100)**2)
#
# BMI = (weight / height).round(2)
#
# if BMI > 30
#   puts Rainbow("Your BMI is #{BMI}, and falls in the OBESE range.  Put down the fork!").red
# elsif BMI.between?(25,30)
#   puts Rainbow("Your BMI is #{BMI}, and is considered Overweight.  Time to hit the treadmill").orange
# elsif BMI.between?(18.5, 25)
#   puts Rainbow("Your BMI is #{BMI}, and is considered a normal.  Have a break, have a KitKat").green
# elsif BMI < 18.5
#   puts Rainbow("Your BMI is #{BMI}, which is considered underweight.  Have Snikers... or 3").purple
# end

def calc_bmi
  puts "Calculate BMI? (Y/N)"
  print "Enter your choice: "
end

calc_bmi()
selection = gets.chomp.downcase

until selection == 'n'
  puts Rainbow("Please input your weight (kg): ").green
  weight = gets.chomp.to_f
  puts Rainbow("please enter your height (cm): ").blue
  height = (((gets.chomp.to_f)/100)**2)

  BMI = (weight / height).round(2)

  if BMI > 30
    puts Rainbow("Your BMI is #{BMI}, and falls in the OBESE range.  Put down the fork!").red
  elsif BMI.between?(25,30)
    puts Rainbow("Your BMI is #{BMI}, and is considered Overweight.  Time to hit the treadmill").orange
  elsif BMI.between?(18.5, 25)
    puts Rainbow("Your BMI is #{BMI}, and is considered a normal.  Have a break, have a KitKat").green
  elsif BMI < 18.5
    puts Rainbow("Your BMI is #{BMI}, which is considered underweight.  Have Snikers... or 3").purple
end

calc_bmi
selection = selection = gets.chomp.downcase
end

puts "Thanks for using my calculator"
