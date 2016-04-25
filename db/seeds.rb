# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Task.create([
{title:"Seed the database", completed:true},
{title:"Create a tasks controller"},
{title:"Create routing"},
{title:"Print out some JSON I guess?"}
  ])



puts "seeded #{Task.count} Tasks!"
