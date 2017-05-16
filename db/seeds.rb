# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Movie.create(movie_title: "The Phantom Menace", released: 1999)
Movie.create(movie_title: "Attack of the Clones", released: 2002)
Movie.create(movie_title: "Revenge of the Sith", released: 2005)
e4 = Movie.create(movie_title: "A New Hope", released: 1977)
Movie.create(movie_title: "The Empire Strikes Back", released: 1980)
Movie.create(movie_title: "Return of the Jedi", released: 1983)
Movie.create(movie_title: "The Force Awakens", released: 2015)
Movie.create(movie_title: "The Last Jedi", released: 2017)
Movie.create(movie_title: "Episode IX", released: 2019)
r1 = Movie.create(movie_title: "Rogue One", released: 2016)

e4.actors << Actor.create(actor_name: "Harrison Ford")
e4.actors << Actor.create(actor_name: "Carrie Fisher")
r1.actors << Actor.create(actor_name: "Felicity Jones")
