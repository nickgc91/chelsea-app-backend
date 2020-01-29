# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


nick = User.create(username: 'Nick', password: 'nick', first_name: 'Nicolas', last_name: 'Cha', favorite_player:  'Kante', favorite_video:  "XnzYbCe-dpE", 
favorite_match: 'Burnley. What a cracker of a match!! :D', memorable_moment: "Kante's goal against City. Beautiful!!", uplifting_win: "The comeback vs Arsenal at the Emirates to end up winning 1-2. What a game!!!", 
demoralizing_defeat: "Losing against all the lower table teams after big wins against the top 6... :(")
imran = User.create(username: 'Imran', password: 'imran', first_name: 'Imran', last_name: 'Hossain', favorite_player:  'Rudiger', favorite_video:  "t8Iw01t-1vk")
bob = User.create(username: 'Bob', password: 'bob', first_name: 'Bob', last_name: 'Lang', favorite_player:  'Abraham', favorite_video:  "9LDjq7IzyLY")
chris = User.create(username: 'Chris', password: 'chris', first_name: 'Christopher', last_name: 'Fu', favorite_player:  'Mount', favorite_video:  "")
jack = User.create(username: 'Jack', password: 'jack', first_name: 'Jackery', last_name: 'Pump', favorite_player:  'Pulisic', favorite_video:  "")