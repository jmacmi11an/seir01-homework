require 'pry'

$lines = {
    'n' => ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th'], 
    'l' => ['8th', '6th', 'Union Square', '3rd', '1st'], 
    '6' => ['Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place']
}


def same_line(sArray, sIndex, eIndex)
    if sIndex > eIndex
        puts 'Get on the train heading toward '+sArray[0]
        while sIndex > eIndex +1 do
            sIndex = sIndex -1
            puts 'Continue riding through '+sArray[sIndex]
        end
        sIndex = sIndex -1
        puts 'Get out at the next stop ('+sArray[sIndex]+')'
    end
    if sIndex < eIndex
        puts 'Get on the train heading toward '+sArray[sArray.size() -1]
        while sIndex < eIndex -1  do
            sIndex = sIndex +1
            puts 'Continue riding through '+sArray[sIndex]
        end
        sIndex = sIndex +1
        puts 'Get out at the next stop ('+sArray[sIndex]+')'
    end
end


def diff_line(sArray, sIndex, eArray, eIndex, name) 
    sChangeOver = sArray.index('Union Square')
    eChangeOver = eArray.index('Union Square')
    same_line(sArray, sIndex, sChangeOver)
    puts 'switch over to the '+name+' line'
    same_line(eArray, eChangeOver, eIndex)
end
  


def plan_trip (startLine, startStation, endLine, endStation)
    sArray = $lines[startLine]
    sIndex = sArray.index(startStation)
    eArray = $lines[endLine]
    eIndex = eArray.index(endStation)

    if startLine == endLine
        same_line(sArray, sIndex, eIndex)
    else 
        diff_line(sArray, sIndex, eArray, eIndex, endLine)
    end
end

binding.pry
  


