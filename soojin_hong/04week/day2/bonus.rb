# # Bonus
# ## Mortgage Calculator
# Calculate the monthly required payment given the other variables as input (look up the necessary variables)
puts "--" * 40
puts "Mortgage Calculator"

print "How much money were you lent? "
loan_amount = gets.to_f

print "What is the annual interest rate? "
annual_interest_rate = gets.to_f / 100
monthly_interest_rate = annual_interest_rate / 12

print "How many years do you have to pay it back? "
loan_term = gets.to_f
loan_term_month = loan_term * 12

puts loan_amount # 100000
puts annual_interest_rate #6
puts monthly_interest_rate # 0.5
puts loan_term #30 yr
puts loan_term_month # 360yr


est_monthly_payment =
 loan_amount * (monthly_interest_rate * (1+monthly_interest_rate) ** loan_term_month  / ((1+monthly_interest_rate) ** loan_term_month -1) )

puts "Your estimated monthly payment: $#{ est_monthly_payment.round(2) }"

## BMI Calculator
#Calculate the body mass index (BMI) for an individual, given their height and weight
puts "--" * 40
puts "BMI Calculator"

print "What is your weight? "
weight = gets.to_i

print "What is your height? "
height = gets.to_i

bmi = weight /  (height * height)

puts "Your BMI is #{ bmi }"


# ## Trip Calculator
# Calculate a trip time and cost given inputs for
# - distance // => 100km
# - KM per liter // => 5km/l
# - price per liter // => 1000aud/l
# - speed in KM per hour // => 50km/h

#time : distance / per hour speed // => 2hours
#cost : distance / KM per liter * price // => 20,000 aud

puts "--" * 40
puts "Trip Calculator"

print "How many KM have you travelled? "
distance = gets.to_f

print "How many KM have you travelled per Liter? "
km_per_liter = gets.to_f

print "How much have you paid per Liter? "
dollar_per_liter = gets.to_f

print "How many KM have you travelled per hour? "
km_per_hour = gets.to_f

time = distance / km_per_hour
cost = distance / km_per_liter * dollar_per_liter

puts "You have travelled #{ time.round } hours and spent #{ cost.round } dollars."
