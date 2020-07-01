
def calculating
  print "What is the distance you're looking to travel? "
    distance = gets.chomp.to_f
  print "How many miles per gallon? "
    mpg = gets.chomp.to_f
  print "What is the price per gallon in $? "
    ppg = gets.chomp.to_f
  print "lastly, just need the speed in miles per hour: "
    mph = gets.chomp.to_f
  time = distance/mph
  cost = distance * ppg / mpg
  puts "the total time to travel is #{time}. The cost is $#{cost}"
end
calculating



# Trip Calculator
# Calculate a trip time and cost given inputs for
#
# distance
# miles per gallon
# price per gallon
# speed in miles per hour
