def travel(lane, startSatation, destStation)
  lines = {
    "lineN" => ("Times Square,34th,28th,23rd,Union Square,8th").split(","),
    "lineL" => ("8th,6th,Union Square,3rd,1st").split(","),
    "line6" => ("Grand Central,33rd,28th,23rd,Union Square,Astor Place").split(",")
  }
  startIndex = lines[lane].index(startSatation)
  stopIndex = lines[lane].index(destStation)
  txt = "You must travel through the following stops on the #{lane} line: "
  if startIndex < stopIndex
    while startIndex < stopIndex
      startIndex += 1
      txt = txt + lines[lane][startIndex] + ", "
    end
    print txt
  else 
    while stopIndex < startIndex
      startIndex -= 1
      txt = txt + lines[lane][startIndex] + ", "
    end
    print txt
  end
  return (lines[lane].index(startSatation) - lines[lane].index(destStation)).abs
end

def trip (startLane, startSatation, destLane, destStation)
  lines = {
    "lineN" => ("Times Square,34th,28th,23rd,Union Square,8th").split(","),
    "lineL" => ("8th,6th,Union Square,3rd,1st").split(","),
    "line6" => ("Grand Central,33rd,28th,23rd,Union Square,Astor Place").split(",")
}
  startLane = "line" + startLane
  destLane = "line" + destLane

  abort("Wrong Line name.") if (lines[startLane] == nil || lines[destLane] == nil)
  abort("Wrong Station name.") if !lines[startLane].include? startSatation
  abort("Wrong Station name.") if !lines[destLane].include? destStation   
    
  if startLane == destLane 
    distance = travel(startLane, startSatation, destStation)
    puts "#{distance} stops in total."
  else  
    distance = travel(startLane, startSatation, "Union Square")
    puts "Change at Union Square."
    distance += travel(destLane, "Union Square", destStation)
    puts "#{distance} stops in total."
  end
end

trip("N", "23rd", "N", "Times Square")
trip('6', 'Grand Central', 'N', 'Times Square')