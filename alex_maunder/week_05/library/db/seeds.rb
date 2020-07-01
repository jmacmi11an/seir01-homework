Author.destroy_all

Author.create(:name => 'J.R.R Tolkien', :nationality => 'English', :dob => '1892-01-03', :genre => 'non-fiction', :image => 'https://images.gr-assets.com/authors/1564399522p5/656983.jpg', :wiki => 'https://en.wikipedia.org/wiki/J._R._R._Tolkien')
Author.create(:name => 'J. K. Rowling', :nationality => 'British', :dob => '1965-07-31', :genre => 'non-fiction', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSCOOqg_zUm5pAi_ZIbuZu198okQLeuoDaEblNd5AIlvqgkX9QZ&usqp=CAU', :wiki => 'https://en.wikipedia.org/wiki/J._K._Rowling')
Author.create(:name => 'Patrick Rothfuss', :nationality => 'American', :dob => '1973-06-06', :genre => 'Fantasy', :image => 'https://upload.wikimedia.org/wikipedia/commons/7/7f/Patrick-rothfuss-2014-kyle-cassidy.jpg', :wiki => 'https://en.wikipedia.org/wiki/Patrick_Rothfuss')

puts "#{ Author.count } authors created."


Book.destroy_all

Book.create(:title => 'The Hobbit', :year => '1937', :publisher => 'Harper Collins', :image => 'https://m.media-amazon.com/images/I/5187PQgDScL.jpg', :bio => "The Hobbit, or There and Back Again is a children's fantasy novel by English author J. R. R. Tolkien. ... The Hobbit is set within Tolkien's fictional universe and follows the quest of home-loving Bilbo Baggins, the titular hobbit, to win a share of the treasure guarded by Smaug the dragon.")
Book.create(:title => 'Harry Potter', :year => '1999', :publisher => 'Bloomsbury Publishing', :image => 'https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg/220px-Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg', :bio => "The first novel in the Harry Potter series and Rowling's debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry.")
Book.create(:title => 'The Name of the Wind', :year => '2007', :publisher => 'DAW books', :image => 'https://upload.wikimedia.org/wikipedia/en/5/56/TheNameoftheWind_cover.jpg', :bio => "The Name of the Wind, also called The Kingkiller Chronicle: Day One, is a heroic fantasy novel written by American author Patrick Rothfuss. It is the first book in the ongoing fantasy trilogy The Kingkiller Chronicle, followed by The Wise Man's Fear. It was published on March 27, 2007 by DAW Books.")

puts "#{Book.count} books created."
