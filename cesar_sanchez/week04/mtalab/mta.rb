require 'pry'

$lN = {
  :stops => ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']
}
$lL = {
  :stops => ['8th', '6th', 'Union Square', '3rd', '1st']
}
$l6 = {
  :stops => ['Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place']
}

def trip (line, station_in, station_out)

  flow = line[:stops]

  index_in = flow.index station_in
  index_out = flow.index station_out

  if index_in > index_out
    flow.reverse!
    index_in = index_out
    index_out = flow.index station_in
  end

  journey = flow[index_in + 1 ..index_out]
  total_stations = journey.size

  puts "You must travel through the following stops on the N line: #{ journey.join(", ") }."
  return total_stations
end


def plan_trip (line_in, station_in, line_out, station_out)

  total_stations = 0
  if line_in == line_out
    total_stations += trip(line_in, station_in, station_out)
    puts "#{total_stations} stops in total."
  else
    total_stations += trip(line_in, station_in, "Union Square")
    puts "Change at Union Square"
    total_stations += trip(line_out, "Union Square", station_out)
    puts "#{total_stations} stops in total."
  end
end

plan_trip($lN, "34th", $l6, "Grand Central")
binding.pry
