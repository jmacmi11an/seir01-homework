
def mortgagescalculation

  print "What is your approved interest rate? "
    rate = gets.chomp.to_f
  print "How long were you looking at getting the loan for? In years "
    term = gets.chomp.to_f
  print "how much are you looking to borrow? "
    principal = gets.chomp.to_f

  rate = (rate/100)/12
  term = term * 12
  monthlysum = principal*(rate*(1+rate)**term)/(((1+rate)**term)-1)
  puts "Your monthly repayment is #{monthlysum}"
end
mortgagescalculation
