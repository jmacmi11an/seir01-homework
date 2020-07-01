def show_menu
    puts "Calculator"
    puts "-=" * 30
    puts "[a] - Addition"
    puts "[s] - Subtraction"
    puts "[m] - Multiplication"
    puts "[d] - Division"
    puts "[e] - Exponents"
    puts "[sqrt] - Square roots"
    puts "[mrg] - Mortgage Calculator"
    puts "[bmi] - BMI Calculator"
    puts "[q] - Quit"
    print "Enter your choices: "
    
end

def exp (number1 , number2)
    i = 1
    expo = number1
    while i < number2
        expo = expo * number1
        i += 1
    end
    puts expo
end

def mortgage (amount, rate, lengthOfLoan)
    rate /= 1200
    monthlyPayment = amount*(rate * ((1 + rate) ** lengthOfLoan))/(((1 + rate) ** lengthOfLoan) - 1)
    # amt*(apr * Math.pow((1 + apr), term))/(Math.pow((1 + apr), term) - 1);
    puts '%.2f' % monthlyPayment
end

show_menu
menu_choic = gets.chomp.downcase

until menu_choic == 'q'
    num1 = ""
    num2 = ""
    year = ""
    if (menu_choic != "sqrt" && menu_choic != "mrg" && menu_choic != "bmi")
        print "Enter your first number: "
        num1 = gets.chomp.downcase
        print "Enter your second number: "
        num2 = gets.chomp.downcase
    end

    if menu_choic == "sqrt"
        print "Enter your number: "
        num1 = gets.chomp.downcase
    end
    if menu_choic == "mrg"
        print "Enter the amount: "
        num1 = gets.chomp.downcase
        print "Enter the interest rate: "
        num2 = gets.chomp.downcase
        print "How many years: "
        year = gets.chomp.downcase
    end
    if menu_choic == "bmi"
        print "Enter your weight (Kg): "
        num1 = gets.chomp.downcase
        print "Enter your height (cm): "
        num2 = gets.chomp.downcase
    end
    print "resault is: "
    number1 = num1.to_i
    number2 = num2.to_f
    lengthOfLoan = 12 * year.to_i
    case menu_choic
    when 'a'
        puts number1 + number2
    when 's'
        puts number1 - number2
    when 'm'
        puts number1 * number2
    when 'd'
        puts number1 / number2
    when 'e'
        exp(number1, number2)
    when 'sqrt'
        puts Integer.sqrt(number1)
    when 'mrg'
        mortgage(number1, number2, lengthOfLoan)
    when 'bmi'
        number2 /= 100
        puts number1 / (number2 * number2)
        puts "Healthy range is 18.5 to 24.9"
    else
        puts "Invalid selection, choose from menu."
    end
    puts ""
    show_menu
    menu_choic = gets.chomp.downcase
end

puts "Thank you for using this calculator!"