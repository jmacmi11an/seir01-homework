require 'pry'

mta = {
  "line_n" => [ 'Times Square', '34th', '28th', '23rd', 'Union Square', '8th' ],
  "line_l" => [ '8th', '6th', 'Union Square', '3rd', '1st' ],
  "line_6" => [ 'Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place' ],
}

on_stop = 'Union Square'
num1 = mta['line_n'].index(on_stop)


off_stop = 'Times Square'
num2 = mta['line_n'].index(off_stop)

stop_nums = num1 - num2
stop_names = if num1 > num2
              mta["line_n"][num2..num1].reverse
            else
              mta['line_n'][num1..num2]
            end

puts "You must travel through the following stops on the N line: #{ stop_names }"
puts "#{ stop_nums.abs } stops in total."


binding pry
