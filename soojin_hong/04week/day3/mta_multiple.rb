require 'pry'

mta = {
  "line_n" => [ 'Times Square', '34th', '28th', '23rd', 'Union Square', '8th' ],
  "line_l" => [ '8th', '6th', 'Union Square', '3rd', '1st' ],
  "line_6" => [ 'Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place' ],
}

print "Which line are you getting on? (N, L, or 6) "
on_line = gets.chomp
start_line = "line_#{ on_line.to_s.downcase }"

print "Which stop are you getting on? "
on_stop = gets.chomp
start_stop = mta[start_line].index(on_stop)

start_union_square = mta[start_line].index('Union Square')

nums_first_journey = (start_stop - start_union_square).abs
stops_first_journey = if start_stop > start_union_square
              mta[start_line][start_union_square..start_stop-1].reverse
            else
              mta[start_line][start_stop+1..start_union_square]
            end

print "Which line are you getting off? (N, L, or 6) "
off_line = gets.chomp
last_line = "line_#{ off_line.to_s.downcase }"

print "Which stop are you getting off? "
off_stop = gets.chomp
last_stop = mta[last_line].index(off_stop)

last_union_square = mta[last_line].index('Union Square')

nums_second_journey = (last_union_square - last_stop).abs
stops_second_journey = if last_stop < last_union_square
              mta[last_line][last_stop..last_union_square-1].reverse
            else
              mta[last_line][last_union_square..last_stop]
            end

puts '=+' * 20
puts "You must travel through the following stops on the #{ on_line.to_s.upcase } line: #{ stops_first_journey }."
puts "Change at Union Square."
puts "Your journey continues through the following stops: #{ stops_second_journey }."
puts "#{ nums_first_journey + nums_second_journey } stops in total."
puts '=+' * 20

binding pry
