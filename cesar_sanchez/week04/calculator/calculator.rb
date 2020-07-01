def calc_menu
  puts "Welcome to crappy calculator!"
  puts "[a] - Addition"
  puts "[s] - Substraction"
  puts "[d] - Division"
  puts "[m] - Multiplication"
  puts "[sq] - Square root"
  puts "[p] - Power"
  puts "[q] - Quit"
  puts "+"*40
  print "Please choose your option: "
end

calc_menu
option = gets.chomp.downcase

until option == "q"
  case option

  when "a"
    print "First number: "
    add1 = gets.to_f
    print "Second number: "
    add2 = gets.to_f
    total = add1 + add2
    puts "#{ add1 } + #{ add2 } is equal to #{ total }"

  when "s"
    print "First number: "
    subs1 = gets.to_f
    print "Second number: "
    subs2 = gets.to_f
    total = subs1 - subs2
    puts "#{ subs1 } - #{ subs2 } is equal to #{ total }"

  when "d"
    print "First number: "
    div1 = gets.to_f
    print "Second number: "
    div2 = gets.to_f
    total = div1 / div2
    puts "#{ div1 } divided by #{ div2 } is equal to #{ total }"

  when "m"
    print "First number: "
    mult1 = gets.to_f
    print "Second number: "
    mult2 = gets.to_f
    total = mult1 * mult2
    puts "#{ mult1 } multiplied by #{ mult2 } is equal to #{ total }"

  when "p"
    print "Base: "
    base = gets.to_f
    print "Exponent: "
    exp = gets.to_f
    total = base ** exp
    puts "#{ base } to the power of #{ exp } is equal to #{ total }"

  when "sq"
    print "Number: "
    num = gets.to_f
    total = Math.sqrt(num)
    puts "The square root of #{ num } is equal to #{ total }"
  end

  calc_menu
  option = gets.chomp.downcase
end
puts "Thank you for using crappy calculator."
