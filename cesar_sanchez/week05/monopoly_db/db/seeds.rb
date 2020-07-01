Property.destroy_all

Property.create :name => 'Electric Company', :monopoly => 'Utility', :rent => 'X4'
Property.create :name => 'Water Works', :monopoly => 'Utility', :rent => 'X4'

puts "#{ Property.count } properties in your portfolio."
