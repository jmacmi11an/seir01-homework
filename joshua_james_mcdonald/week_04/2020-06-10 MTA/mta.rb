def plan_trip initial_line, initial_stop, final_line, final_stop
    lines = {
        "N" => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
        "L" => ["8th", "6th", "Union Square", "3rd", "1st"],
        "6" => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
    }
    station_ids = { 
                    1 => "Times Square", 2 => "34th", 3 => "28th", 4 => "23rd", 5 => "Union Square",
                    6 => "8th", 7=> "8th", 8 => "6th", 9 => "Union Square", 10 => "3rd", 
                    11 => "1st", 12 => "Grand Central", 13 => "33rd", 14 => "28th", 15=>  "23rd",
                    16 => "Union Square", 17 => "Astor Place"
                    }

    adjacency_list = 

    print "you must travel through the following stations on the #{initial_line} line: "
    lines[initial_line].map {|b| print "#{b}, "}
    puts ""
end

# plan_trip (initial_line, initial_stop, final_line, final_stop)
plan_trip 'N', 'Times Square', 'N', '23rd'

# plan_trip 'N', 'Times Square', '6', '33rd'
