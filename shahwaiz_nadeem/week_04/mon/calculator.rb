def show_menu
  puts "Calculator"
  puts "-=" * 40 # el cheapo  horizontal divide line
  puts "[a] - addition"
  # To do: add other options
  puts "[q] - quit"
  print "Enter your choice: "
end

show_menu
menu_choice = gets.chomp.downcase

until menu_choice == 'q'

  case menu_choice
  when 'a'
    puts "Addition coming soon!"
  else
    puts "Invalid selection you idiot"
  end
  show_menu
  menu_choice = gets.chomp.downcase
end


# show menu
# get the user choice

# until user_choice == 'q'
