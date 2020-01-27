# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


nick = User.create(username: 'Nick', password: 'nick', first_name: 'Nicolas', last_name: 'Cha', favorite_player:  'Kante', favorite_video:  'XnzYbCe-dpE')
bob = User.create(username: 'Bob', password: 'bob', first_name: 'Bob', last_name: 'Lang', favorite_player:  'Abraham', favorite_video:  '9LDjq7IzyLY')
chris = User.create(username: 'Chris', password: 'chris', first_name: 'Christopher', last_name: 'Fu', favorite_player:  'Mount')
jack = User.create(username: 'Jack', password: 'jack', first_name: 'Jackery', last_name: 'Pump', favorite_player:  'Pulisic')