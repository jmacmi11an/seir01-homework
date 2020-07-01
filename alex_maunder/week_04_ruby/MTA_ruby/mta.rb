require "pry"

# $lines.map { |line, stop| stop }.inject &:& # gets the intersection (Union Square) - would be useful if multiple intersecting stations
# $lines.map { |_, n| n.index "Union Square" } # find index of Union Square at each line

$lines = {
  "n_line"=>['Times Square', '34th', '28th', '23rd', 'Union Square', '8th'],
  "six_line"=>['Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place'],
  "l_line"=>['8th', '6th', 'Union Square', '3rd', '1st']
}

$total_stops_first = 0
$total_stops_second = 0

def plan_trip (start_line, start_station, end_line, end_station)
  index_start = $lines["#{start_line}"].index "#{start_station}"
  index_union_start = $lines["#{start_line}"].index "Union Square"
  index_end = $lines["#{end_line}"].index "#{end_station}"
  index_union_end = $lines["#{end_line}"].index "Union Square"

  #change at Union Square
  if start_line != end_line
    $total_stops_first += index_start - $lines["#{start_line}"].index("Union Square")
    $total_stops_second += index_end - $lines["#{end_line}"].index("Union Square")
    trip1 = $lines[start_line][index_union_start..index_start].reverse.join(", ") if $total_stops_first.positive? # r to l
    trip1 = $lines[start_line][index_start..(index_union_start -1)].join(", ") if $total_stops_first.negative? # l to r
    trip2 = $lines[end_line][index_union_end..index_end].join(", ") if $total_stops_second.positive?
    trip2 = $lines[end_line][index_end..(index_union_end - 1)].reverse.join(", ") if $total_stops_second.negative?

    puts "You must travel through the following stops on the #{start_line}: #{trip1}"
    puts "Change at Union Square"
    puts "You must travel through the following stops on the #{end_line}: #{trip2}"
    puts "#{$total_stops_first.abs + $total_stops_second.abs} stops in total."

    $total_stops_first = 0 # reset the count
    $total_stops_second = 0 # reset the count

  else #stay on same line
    $total_stops_first += (index_start - index_end) # if negative, left to right, if positive, right to left
    trip = $lines[start_line][index_end, index_start].reverse.join(", ") if $total_stops_first.positive? # the predicate here is more explicit, but not needed twice
    trip = $lines[start_line][(index_start + 1), index_end].join(", ") if $total_stops_first.negative?
    puts "You must travel through the following stops on the #{start_line}: #{trip}"
    puts "#{$total_stops_first.abs} stops in total." # abs converts total_stops_first to positive int (ie in the case you're going from left to right)
    $total_stops_first = 0 # reset the count
  end

end # this will return 0 as it is the last line of code executed ie $total_stops_first = 0

binding.pry
