# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'dan', password: 'password')
User.create(username: 'jay', password: 'password')
User.create(username: 'vlad', password: 'password')

Message.create(body:'heeeya', user: User.last)
Message.create(body:'how ya guys doing?', user: User.last)
Message.create(body:'heey', user: User.second)
Message.create(body:'hey man! all good, how about you?', user: User.first)
