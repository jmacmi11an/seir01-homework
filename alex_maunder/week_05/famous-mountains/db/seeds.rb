Mountain.destroy_all

Mountain.create :name => 'Mt Fujitsu', :location => 'Japan', :height  => 123123
Mountain.create :name => 'Mt Everest', :location => 'Nepal', :height => 283
Mountain.create :name => 'Mt Kiliminjaro', :location => 'Sth Africa', :height => 511

puts "#{Mountain.count} mountains available."
