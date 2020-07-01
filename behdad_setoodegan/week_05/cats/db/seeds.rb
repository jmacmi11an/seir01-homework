Cat.destroy_all

Cat.create :name => 'kitty', :age => '3'
Cat.create :name => 'flufy', :age => '2'
Cat.create :name => 'missy', :age => '4'

puts "#{ Cat.count} planets available."