# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
movies = [{title: "Alladin", release_date: "25-nov-1992"},
  {title: "When Harry Met Sally", release_date: "25-Jul-1989"},
  {title: "Requiem for a Dream", release_date: "25-Jul-1989"},
  {title: "Concussion", release_date: "25-nov-2016"},
  {title: "The Help", release_date: "10-Aug-2011"}]

movies.each  do |movie|
    Movie.create!(movie)
end

actors = [
  {name:"Angelina Jolie", gender:"female"},
  {name:"Will Smith", gender:"male"},
  {name:"Margot Robbie" , gender:"female"} ]

actors.each  do |actor|
  Actor.create!(actor)
end

directors =[
  {name:"Quantin Tarantino", gender:"female"},
  {name:"Mel Gibson", gender:"female"}]

directors.each  do |director|
  Director.create!(director)
end
