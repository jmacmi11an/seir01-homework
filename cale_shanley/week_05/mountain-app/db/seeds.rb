Mountain.destroy_all

Mountain.create :name => 'Mount Everest', :height => 8848, :country => 'Asia'
Mountain.create :name => 'Mount Kilimanjaro', :height => 5895, :country => 'Tanzania'
Mountain.create :name => 'Mount Fuji', :height => 3776, :country => 'Japan'

puts "#{Mountain.count} Mountains avaliable."