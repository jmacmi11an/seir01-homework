# require 'pry'
require 'rainbow'

## THE ATHETICS AND USER INPUT BELOW
mta_stops = {
  'N' => ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th'],
  'L' => ['8th', '6th', 'Union Square', '3rd', '1st'],
  '6' => ['Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place'] ##initially had symbols but once the code became generic, it wouldn't work. Ask Joel or Aleks why
}
# from = 'Times Square'
def get_station (stops, verb)  #local parameters for the function (line 11-46)
  selected_line = -1 #given a value we know it can't be in order to enter the loop
  until selected_line == 'N' or selected_line == 'L' or selected_line == '6' do #this is our for loop pretty much DO THIS UNTIL
    puts Rainbow("Which line are you #{verb}? ").red.bright #THIS IS AN EXAMPLE OF VERB
    puts Rainbow("[N] - LineN").green
    puts Rainbow("[L] - LineL").aqua
    puts Rainbow("[6] - Line6").purple.bright
    selected_line = gets.chomp
    if not (selected_line == 'N' or selected_line == 'L' or selected_line == '6') #IF NOT WHAT WE WANT
      puts "Please try again"
    end
  end
  selected_station = '' # PUt this here so we are aware i'll be using it coming up.
  until stops[selected_line].include? selected_station do #using selected_line so this is generic - does line[generic line] include the generic line?
    puts "please select the station you're #{verb}#{stops[selected_line]}"#using selected_line so this is generic -  will show the stations of lines chosen. Can only be N L 6 because of previous filter (if not)
    selected_station = gets.chomp # gets their answer
  end
  return [selected_line, selected_station] #we are going to use plan trip - we need to pass the information to it.
end

def plan_trip stops, line1, stop_on, line2, stop_off # everything is within the function
#LOGIC IS BELOW
  index_stop_on = stops[line1].find_index(stop_on) #define the index of stop on,
  index_stop_off = stops[line2].find_index(stop_off)#define the index of stop off,
  index_uq_line1 = stops[line1].find_index('Union Square') #define the index of union square in first line,
  index_uq_line2 = stops[line2].find_index('Union Square') #define the index of union square in second line
  if index_stop_on < index_uq_line1 #if index of stop on is smaller than union square line1
    line1_stops = stops[line1][index_stop_on..index_uq_line1] # forwards, on->uq
  else
    line1_stops = stops[line1][index_uq_line1..index_stop_on].reverse() # backwards, on<-uq, reverse
  end
  if index_stop_off > index_uq_line2 #if union square index is bigger than stop off in line 2
    line2_stops = stops[line2][(index_uq_line1 + 1)..index_stop_off] # forwards, uq->off
  else
    line2_stops = stops[line2][index_stop_off..(index_uq_line1 - 1)].reverse() # backwards, off<-uq, reverse
  end
  if line1 != line2 ## This is where we test if the two lines are equal. If they are, we can puts
    num_of_stops = line1_stops.length + line2_stops.length - 1 #define num_of_stops by length of both line stops
    puts "You must travel through the following stops on the #{ line1 } line: #{ line1_stops.join', ' }."
    puts "Change at Union Square."
    puts "Your journey continues through the following stops: #{ line2_stops.join', ' }."
    puts "#{ num_of_stops } stops in total."
  elsif line1 == line2 # if lines are the same - no need to change line
    num_of_stops = (index_stop_on - index_stop_off).abs # abs means it's a value that's not negative.
    puts "You must travel through the following stops on the #{ line1 } line: #{(line1_stops + line2_stops).join', '}."
    puts "You don't need to change line."
    puts "#{ num_of_stops } stops in total."
  end
end

puts "Welcome to the MTA"
puts "-=" * 40
source_station = get_station(mta_stops, 'departing from?')
destination_station = get_station(mta_stops, 'heading to?')
line1 = source_station[0]
stop_on = source_station[1]
line2 = destination_station[0]
stop_off = destination_station[1]
puts "Your source station is", source_station
puts "Your destination station is", destination_station
plan_trip mta_stops, line1, stop_on, line2, stop_off


# start_MTA
# binding.pry
