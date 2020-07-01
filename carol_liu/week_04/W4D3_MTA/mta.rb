require 'pry'

def plan_trip line1, stop_on, line2, stop_off
  stops = {
    'N' => ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th'],
    'L' => ['8th', '6th', 'Union Square', '3rd', '1st'],
    '6' => ['Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place']
  }

  index_stop_on = stops[line1].find_index(stop_on)
  index_stop_off = stops[line2].find_index(stop_off)
  index_uq_line1 = stops[line1].find_index('Union Square')
  index_uq_line2 = stops[line2].find_index('Union Square')


  if index_stop_on < index_uq_line1
    line1_stops = stops[line1][index_stop_on..index_uq_line1] # forwards, on->uq
  else
    line1_stops = stops[line1][index_uq_line1..index_stop_on].reverse() # backwards, on<-uq, reverse
  end

  if index_stop_off > index_uq_line2
    line2_stops = stops[line2][(index_uq_line1 + 1)..index_stop_off] # forwards, uq->off
  else
    line2_stops = stops[line2][index_stop_off..(index_uq_line1 - 1)].reverse() # backwards, off<-uq, reverse
  end

  if line1 != line2
    num_of_stops = line1_stops.length + line2_stops.length - 1

    puts "You must travel through the following stops on the #{ line1 } line: #{ line1_stops.join', ' }."
    puts "Change at Union Square."
    puts "Your journey continues through the following stops: #{ line2_stops.join', ' }."
    puts "#{ num_of_stops } stops in total."

  elsif line1 == line2
    num_of_stops = (index_stop_on - index_stop_off).abs

    puts "You must travel through the following stops on the #{ line1 } line: #{(line1_stops + line2_stops).join', '}."
    puts "You don't need to change line."
    puts "#{ num_of_stops } stops in total."
  end
end

plan_trip 'N', 'Times Square', '6', '33rd'
plan_trip 'L', '6th', 'L', '1st'
plan_trip '6', 'Astor Place', 'N', '8th'
plan_trip 'N', '8th', 'N', '34th'

# binding.pry
