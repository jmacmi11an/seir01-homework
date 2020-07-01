require 'rainbow'

puts "welcome to the Trip Planner for calculating trip time and cost"

def calc_trip
  puts "Calculate new trip time and cost (Y/N)"
  print "Enter your choice: "
end

calc_trip()
selection = gets.chomp.downcase

until selection == 'n'
  puts "Please input trip distance (km): "
  distance = gets.chomp.to_f
  puts "Please input how many km per litre your car gets: "
  fueluse = gets.chomp.to_f
  puts "Please input the current cost per litre for petrol: "
  fuelcost = gets.chomp.to_f
  puts "please input expected speed (km): "
  speed = (gets.chomp.to_f)

TIME = ((distance / speed).round(2))
  time_hours = TIME.to_i
  time_minutes = ((TIME % 1)*60).round(0)

COST = (((distance / fueluse)*fuelcost).to_f).round(2)

puts "The trip will take " + Rainbow("#{time_hours} hr, #{time_minutes} minutes").green + " and cost " + Rainbow("$#{COST}.").red

calc_trip()
selection = gets.chomp.downcase
end

puts "thanks for using my trip planner"
