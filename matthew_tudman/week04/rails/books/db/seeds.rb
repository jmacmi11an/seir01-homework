# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.destroy_all

Author.create(:name => 'J.R.R. Tolkien', :nationality => 'English', :dob => '1892-01-03', :genre => 'Fantasy', :image => 'https://www.harringtonbooks.co.uk/images/upload/authors_9_1.jpg')

Author.create(:name => 'Brandon Sanderson', :nationality => 'American', :dob => '1975-12-19', :genre => 'Fantasy', :image => 'https://images.gr-assets.com/authors/1394044556p8/38550.jpg')

Author.create(:name => 'Mary Shelley', :nationality => 'English', :dob => '1797-08-30', :genre => 'Gothic/Science Fiction', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/RothwellMaryShelley.jpg/1200px-RothwellMaryShelley.jpg')

Novel.destroy_all

Novel.create(:title => 'The Lord of the Rings', :year => '1954-1955', :length => 576459 , :genre => 'Fantasy', :image => 'https://upload.wikimedia.org/wikipedia/en/e/e9/First_Single_Volume_Edition_of_The_Lord_of_the_Rings.gif')

Novel.create(:title => 'The Way of Kings', :year => '2010', :length => 425000, :genre => 'Fantasy', :image => 'https://hungryandfit.com/wp-content/uploads/2014/04/The-Way-of-Kings-by-Brandon-Sanderson.jpg')

Novel.create(:title => 'Frankenstein', :year => '1818', :length => 90625, :genre => 'Gothic/Science Fiction', :image => 'https://m.media-amazon.com/images/I/41dj+xC+zWL.jpg')
