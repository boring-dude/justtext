# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Aravindhan', password: '12345678')
User.create(name: 'Aravindhan1', password: '1234')
User.create(name: 'Aravindhan2', password: '12345')
User.create(name: 'Aravindhan3', password: '123456')

Mail.create(body: 'Aravindhan',  user: User.first)
Mail.create(body: 'Aravindhan1', user: User.first)
Mail.create(body: 'Aravindhan2', user: User.first)
Mail.create(body: 'Aravindhan3', user: User.first)
