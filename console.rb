require('pry-byebug')

require_relative('models/star')
require_relative('models/movie')
require_relative('models/casting')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

star1 = Star.new({ 'first_name' => 'Natalie', 'last_name' => 'Portman' })
star1.save()
star2 = Star.new({ 'first_name' => 'Vincent', 'last_name' => 'Cassel' })
star2.save()

movie1 = Movie.new({ 'title' => 'Annihilation', 'genre' => 'sci-fi', 'budget' => '5000' })
movie1.save()
movie2 = Movie.new({ 'title' => 'Black Swan', 'genre' => 'drama', 'budget' => '10000' })
movie2.save()

casting1 = Casting.new({ 'star_id' => star1.id, 'movie_id' => movie1.id, 'fee' => 1000 })
casting1.save()
casting2 = Casting.new({ 'star_id' => star1.id, 'movie_id' => movie2.id, 'fee' => 1500 })
casting2.save()
casting3 = Casting.new({ 'star_id' => star2.id, 'movie_id' => movie2.id, 'fee' => 1500 })
casting3.save()

binding.pry
nil
