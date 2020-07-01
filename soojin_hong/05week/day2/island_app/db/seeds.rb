Island.destroy_all

Island.create :name => 'Bali', :country => 'Indonesia'
Island.create :name => 'Santorini', :country => 'Greece'
Island.create :name => 'Hawaii', :country => 'US'

puts "#{ Island.count } islands available."
