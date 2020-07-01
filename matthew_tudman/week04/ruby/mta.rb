require "pry"
@system = {
  "Times Squaren" => [1, "n"],
  "34thn" => [2, "n"],
  "28thn" => [3, "n"],
  "23rdn" => [4, "n"],
  "Union Squaren" => [5, "n"],
  "8thn" => [6, "n"],

  "8thl" => [1, "l"],
  "6thl" => [2, "l"],
  "Union Squarel" => [3, "l"],
  "3rdl" => [4, "l"],
  "1stl" => [5, "l"],

  "Grand Central6" => [1, "6"],
  "33rd6" => [2, "6"],
  "28th6" => [3, "6"],
  "23rd6" => [4, "6"],
  "Union Square6" => [5, "6"],
  "Astor Place6" => [6, "6"],

}



def single_travel(line_start, start, line_stop, stop)
  # @system[start][0] # the [0] makes us talk about the station number
  output = "You must travel through the following stops on the #{line_start.capitalize} line:"

  i = @system[start+line_start][0] #starting point
  x = @system[stop+line_stop][0] #ending point

  if i < x
    loop do
      @system.select {|key, value| output += " #{key.chomp(line_start)}," if value[0] == i && value[1] == line_start}
        break if i == x
      i += 1
      @diff += 1
    end
  else
    loop do
      @system.select {|key, value| output += " #{key.chomp(line_start)}," if value[0] == i && value[1] == line_start}
      break if i == x
      i -= 1
      @diff += 1
    end
  end
  p output.chomp(',')
end


def double_travel(line_start, start, line_stop, stop)
  single_travel(line_start, start, line_start, "Union Square")
  output = "You must travel through the following stops on the #{line_stop.capitalize} line:"
  i = @system["Union Square" + line_stop][0] #starting point
  x = @system[stop+line_stop][0] #ending point

  if i < x
    loop do
      @system.select {|key, value| output += " #{key.chomp(line_start)}," if value[0] == i && value[1] == line_start}
        break if i == x
      i += 1
      @diff += 1
    end
  else
    loop do
      @system.select {|key, value| output += " #{key.chomp(line_start)}," if value[0] == i && value[1] == line_start}
      break if i == x
      i -= 1
      @diff += 1
    end
  end
  p "Change at Union Square"
  p output.chomp(',')

end






def travel(line_start, start, line_stop, stop)
  @diff = 0
  if line_start == line_stop
    single_travel(line_start.chomp, start.chomp, line_stop.chomp, stop.chomp)
  else
    double_travel(line_start.chomp, start.chomp, line_stop.chomp, stop.chomp)
  end
  p "#{@diff} stops in total."
end




travel("n", "8th", "6", "Grand Central")
# travel("l", "1st", "6", "28th")
# travel("n", "Times Square", "6", "33rd")
# travel("n", "28th", "l", "8th")
# travel("n", "8th", "l", "8th")

print "Line: "
line_start = gets
print "Station: "
start = gets
print "Line: "
line_stop = gets
print "Station: "
stop = gets

travel(line_start, start, line_stop, stop)









#
