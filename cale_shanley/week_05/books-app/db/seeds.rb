Author.destroy_all 
Author.create(:name => 'Joanne Rowling', :author => 'J. K. Rowling', :dob => '31-07-1965', :image => 'https://pyxis.nymag.com/v1/imgs/f4a/b87/495cb0edf3374af9ecb88570abe4a6c961-jk-rowling.2x.rsquare.w330.jpg')
Author.create(:name => 'Herman Melville', :author => 'Herman Melville', :dob => '01-08-1819', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Herman_Melville_1860.jpg/170px-Herman_Melville_1860.jpg')
Author.create(:name => 'Francis Scott Key Fitzgerald', :author => 'F. Scott Fitzgerald', :dob => '24-09-1896', :image => 'https://www.biography.com/.image/t_share/MTE1ODA0OTcxMTk2NTgxMzg5/f-scott-fitzgerald.jpg')
Author.create(:name => 'Harper Lee', :author => 'Harper Lee', :dob => '28-04-1926', :image => 'https://pyxis.nymag.com/v1/imgs/bf8/773/56b03ba7a7553bfb1bb50c63e1ad0a6457-17-harper-lee.rsquare.w700.jpg')
puts "#{Author.count} authors created"

Book.destroy_all 
Book.create(:name => 'Harry Potter and the Prisoner of Azkaban', :date => '08-07-1999', :image => 'https://kbimages1-a.akamaihd.net/be00a641-64ad-4f99-ad3f-5ecf872c904c/1200/1200/False/harry-potter-and-the-prisoner-of-azkaban-5.jpg')
Book.create(:name => 'Moby Dick', :image => 'https://images-na.ssl-images-amazon.com/images/I/41WMBltiqdL.jpg')
Book.create(:name => 'The Great Gatsby', :date => '10-04-1925', :image => 'https://m.media-amazon.com/images/I/41iers+HLSL.jpg')
Book.create(:name => 'To Kill a Mockingbird', :date => '11-06-1960', :image => 'https://m.media-amazon.com/images/I/51g3AS16r9L.jpg')
puts "#{Book.count} books created"