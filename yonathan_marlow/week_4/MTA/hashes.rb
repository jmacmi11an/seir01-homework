require pry
#
# # Array and Hash access
#
# ### A. Given the following data structure:
#
# ```ruby
a = ["Anil", "Erik", "Jonathan"]
# ```
#
# 1. How would you return the string `"Erik"`?
puts a[1]
# 1. How would you add your name to the array?
a.push('yoni')
puts a
#
# ### B. Given the following data structure:
#
# ```ruby
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
puts h
# ```
#
# 1. How would you return the string `"One"`?
puts h[1]
# 1. How would you return the string `"Two"`?
puts h[:two]
# 1. How would you return the number `2`?
puts h['two']
# 1. How would you add `{3 => "Three"}` to the hash?
h[3] = "three"
# 1. How would you add `{:four => 4}` to the hash?
h[:four] = 4
puts h
#
# ### C. Given the following data structure:
#
# ```ruby
is = {true => "It's true!", false => "It's false"}
# ```
#
# 1. What is the return value of `is[2 + 2 == 4]`?

its true!
# 1. What is the return value of `is["Erik" == "Jonathan"]`?

its false

# 1. What is the return value of `is[9 > 10]`?

its false

# 1. What is the return value of `is[0]`?
nil

# 1. What is the return value of `is["Erik"]`?
nil

#
# ### D. Given the following data structure:
#
# ```ruby
users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

users
# ```
#
# 1. How would you access Jonathan's Twitter handle (i.e. the string `"tronathan"`)?
users["Jonathan"][:twitter] #use users.class then move on and on.

# 1. How would you add the number `7` to Erik's favorite numbers?
 users["Erik"][:favorite_numbers]. << 7

# 1. How would you add yourself to the users hash?
users['Yoni'] = {:twitter => "yoniisbest", :favorite_numbers => [12, 777, 888]}

# 1. How would you return the array of Erik's favorite numbers?
users["Erik"][:favorite_numbers].

# 1. How would you return the smallest of Erik's favorite numbers?
users["Erik"][:favorite_numbers].min

# 1. How would you return an array of Anil's favorite numbers that are also even?
users["Anil"][:favorite_numbers].select { |a| a.even? }

# 1. How would you return an array of the favorite numbers common to all users?
users.map { |name, user| user[:favorite_numbers]}.inject &:&

# 1. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
users.map { |name, user| user[:favorite_numbers]}.flatten.sort.uniq

binding.pry
