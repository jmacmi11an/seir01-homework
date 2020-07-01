
require 'rainbow'
require 'pry'


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
