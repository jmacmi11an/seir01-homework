Country.destroy_all
Country.create(:name => 'Republic of Peru', :capital => 'Lima', :official_language =>'Spanish', :area_in_sqkm => '1,285,216', :population => '32,824,358', :flag => 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Flag_of_Peru_%28state%29.svg/1920px-Flag_of_Peru_%28state%29.svg.png')
Country.create(:name => 'Republic of Chile', :capital => 'Santiago', :official_language =>'Spanish', :area_in_sqkm => '756,096.3', :population => '17,574,003', :flag => 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Flag_of_Chile.svg/1920px-Flag_of_Chile.svg.png')
Country.create(:name => 'Plurinational State of Bolivia', :capital => 'Sucre', :official_language =>'Spanish', :area_in_sqkm => '1,098,581', :population => '11,469,896', :flag => 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Bandera_de_Bolivia_%28Estado%29.svg/1920px-Bandera_de_Bolivia_%28Estado%29.svg.png')
Country.create(:name => 'Federative Republic of Brazil', :capital => 'Brasilia', :official_language =>'Portuguese', :area_in_sqkm => '8,515,767', :population => '210,147,125', :flag => 'https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/1920px-Flag_of_Brazil.svg.png')
Country.create(:name => 'United States of America', :capital => 'Washington, D.C.', :official_language =>'English', :area_in_sqkm => '9,833,520', :population => '308,745,538', :flag => 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1920px-Flag_of_the_United_States.svg.png')
puts "#{ Country.count } works created."

Place.destroy_all
Place.create(:name => 'Salar de Uyuni', :region => 'southwest Bolivia', :feature => 'National Park', :period => 'unknown', :altitude_in_m => '3,663', :image => 'https://upload.wikimedia.org/wikipedia/commons/4/4a/Salar_Uyuni_au01.jpg')
Place.create(:name => 'Machu Picchu', :region => 'Cusco', :feature => 'Inca civilization', :period => '15th century', :altitude_in_m => '2,430', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/80_-_Machu_Picchu_-_Juin_2009_-_edit.2.jpg/600px-80_-_Machu_Picchu_-_Juin_2009_-_edit.2.jpg')
Place.create(:name => 'Christ the Redeemer', :region => 'Rio de Janeiro', :feature => 'Modern/Park', :period => '1931', :altitude_in_m => '710', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Aerial_view_of_the_Statue_of_Christ_the_Redeemer.jpg/440px-Aerial_view_of_the_Statue_of_Christ_the_Redeemer.jpg')
Place.create(:name => 'Flida Kahlo Museum', :region => 'Mexico City', :feature => 'Art', :period => '1920s', :altitude_in_m => '2,250', :image => 'https://www.museeum.com/wp-content/uploads/2018/05/hero_JULIO_Semana-de-Frida_MAIN-3.jpg')
puts "#{ Place.count } works created."
