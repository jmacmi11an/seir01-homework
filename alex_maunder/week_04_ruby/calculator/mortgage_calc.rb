# # Bonus
# ## Mortgage Calculator
# Calculate the monthly required payment given the other variables as input (look up the necessary variables)

def mortgage_menu
  puts "-=" * 40
  puts "Mortgage Calculator"
  puts "-=" * 40
  puts "[enter] to start"
  puts "[q] to quit"
  puts "\n"
end

mortgage_menu
mortgage_choice = gets.chomp.downcase

until mortgage_choice == 'q'

  puts case mortgage_choice
  when ''
    puts "Enter cost of house: "
    cost = gets.to_i
    puts "Enter interest rate: "
    interest = gets.to_f
    puts "Your monthly repayments for a 15yr mortgage will be #{ ((((((cost * (interest / 100)) * 15)) + cost ) / 15 ) / 12)  }"
  end

end

# ## BMI Calculator
# Calculate the body mass index (BMI) for an individual, given their height and weight

puts "Enter your weight: "
weight = gets.chomp.to_i
puts "Enter your height in meters: "
height = gets.chomp.to_f

puts "Your BMI is #{weight / (height ** 2)}"

# ## Trip Calculator
# Calculate a trip time and cost given inputs for
# - distance
# - miles per gallon
# - price per gallon
# - speed in miles per hour
