Composer.destroy_all

Composer.create(:name => 'Pyotr Tchaikovsky', :nationality => 'Russian', :dob => '1840-5-7', :image => 'https://legacyprojectchicago.org/sites/default/files/2019-08/Pyotr%20Tchaikovsky.jpg')
Composer.create(:name => 'Adolphe Adam', :nationality => 'French', :dob => '1803-7-24', :image => 'https://www.ovationpress.com/images/category/descriptionpics/composers/Adolphe_Adam.jpg')
Composer.create(:name => 'Ludwig Minkus', :nationality => 'Austrian', :dob => '1826-3-23', :image => 'https://petipasociety.files.wordpress.com/2016/08/ludwig-minkus.jpg?w=476&h=593')
Composer.create(:name => 'Leo Delibes', :nationality => 'French', :dob => '1846-1-1', :image => 'https://upload.wikimedia.org/wikipedia/commons/2/24/Delibes_Leo_Luckhard.png')

puts "#{ Composer.count } composers created."


Work.destroy_all

Work.create(:title => 'The Nutcracker', :plot => 2, :premiere => '1892-12-18', :place => 'Mariinsky Theatre', :image => 'https://i2.wp.com/www.columbusonthecheap.com/lotc-cms/wp-content/uploads/2017/10/Nutcracker-2_Clara_smaller_preview-e1509419566517.jpeg?fit=849%2C1054&ssl=1')
Work.create(:title => 'Swan Lake', :plot => 2, :premiere => '1877-3-4', :place => 'Bolshoi Theatre', :image => 'https://149359931.v2.pressablecdn.com/wp-content/uploads/2015/01/jv-swan-lake-andrei-yermakov-profile-corps_1000.jpg')
Work.create(:title => 'Giselle', :plot => 2, :premiere => '1841-6-28', :place => 'Paris Opera', :image => 'https://dancemagazine.com.au/wp-content/uploads/2017/10/The-Australian-Ballet-Regional-Tour-of-Giselle.-Photo-by-Jeff-Busby..jpg')
Work.create(:title => 'La Bayadere', :plot => 3, :premiere => '1877-2-4', :place => 'Imperial Theatre', :image => 'https://mikhailovsky.ru/upload/iblock/8ad/bayadere_02.jpg')
Work.create(:title => 'Coppelia', :plot => 3, :premiere => '1870-5-25', :place => 'Paris Opera', :image => 'https://media.timeout.com/images/105295858/630/472/image.jpg')

puts "#{ Work.count } works created."
