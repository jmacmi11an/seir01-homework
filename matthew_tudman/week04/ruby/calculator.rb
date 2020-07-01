

def show_menu
  puts "\n"
  puts "Calculator"
  puts "-=" *40
  puts "[a] - addition"
  puts "[s] - subtraction"
  puts "[m] - multiplication"
  puts "[d] - division"
  puts "[e] - exponent"
  puts "[r] - square root"
  puts "[q] - quit"
  puts "[mortgage] - mortgage calculator"

  print "Enter your choice: "
end


show_menu
menu_choice = gets.chomp.downcase

puts "You have selected: #{menu_choice}"


until menu_choice == 'q'

  case menu_choice
  when 'a'
    print "Enter your first number: "
    x = gets.to_i
    print "Enter your second number: "
    y = gets.to_i
    puts "\nThe total is: #{x + y}"

  when 's'
    print "Enter your first number: "
    x = gets.to_i
    print "Enter your second number: "
    y = gets.to_i
    puts "\nThe total is: #{x - y}"

  when 'm'
    print "Enter your first number: "
    x = gets.to_i
    print "Enter your second number: "
    y = gets.to_i
    puts "\nThe total is: #{x * y}"

  when 'd'
    print "Enter your first number: "
    x = gets.to_i
    print "Enter your second number: "
    y = gets.to_i
    puts "\nThe total is: #{x / y}"

  when 'e'
    print "Enter your number: "
    x = gets.to_i
    print "To the power of: "
    y = gets.to_i
    puts "\nThe total is: #{x ** y}"

  when 'r'
    print "Enter your number: "
    x = gets.to_i
    puts "The total is: #{Math.sqrt(x)}"

  when 'mortgage'
    print "Amount borrowed: "
    amount = gets.to_i
    print "Interest rate: "
    interest_rate = gets.to_i * 0.01
    puts "#{interest_rate}%"
    print "Repayment frequency(weekly, monthly, quarterly or yearly): "
    rep_freq = gets.chomp
    if rep_freq == "monthly"
      rep_freq = 12.0
    elsif rep_freq == "weekly"
      rep_freq = 52.0
    elsif rep_freq == "quarterly"
      rep_freq = 4.0
    elsif rep_freq == "yearly"
      rep_freq = 1.0
    else
      puts "Please enter the correct phrase"
      break
    end
    print "Length of loan(years): "
    length = gets.to_i
    quant_repay = rep_freq * length #the total number of repayments
    each_repayment = amount / quant_repay #the total for each repayment before interest
    int_inc = each_repayment * interest_rate #the interest for each repayment
    total_repayment = each_repayment
    print "Fees amount: "
    fees = gets.to_i
    # print "Fees frequency(weekly, fortnightly, monthly, quarterly or yearly): "
    # fees_freq = gets.to_i
    fees_total = fees * quant_repay
    output = (int_inc + each_repayment) * quant_repay + fees_total #adds the total and interest for each repayment and then makes the combined total of each repayment.
    puts "The total amount is #{output} and the monthly repayments are "

  else
    puts "Invalid selection. You idiot."
  end

  show_menu
  menu_choice = gets.chomp.downcase
end




puts "Thanks for using crappy calculator!"
