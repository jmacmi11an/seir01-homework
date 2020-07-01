# MTA labs Ruby


lines = {'N' => ['Time Square', '34th', '28th', '23rd', 'Union Square', '8th'],
'L' => ['8th', '6th', 'Union Square', '3rd', '1st'],
'6' => ['Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place']}

leave_journey_planner = false
until leave_journey_planner == true do

  puts "What line are you starting with #{lines.keys}?"
  start_line = gets.chomp

  until lines.keys.include?(start_line) do
    puts "Invalid. Please re-enter #{lines.keys}"
    start_line = gets.chomp
  end
  puts "You're starting on " + start_line
end