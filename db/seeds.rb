# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  puts 'Seeding started...'

  # create sample users
  danny = User.create(
    username: 'danny', 
    email: 'danny@email.com', 
    password_digest: BCrypt::Password.create('password'),
    cash: '5000.0'
  )

  mlee = User.create(
    username: 'mlee', 
    email: 'mlee@email.com', 
    password_digest: BCrypt::Password.create('password'),
    cash: '5001.0'
  )

  rj = User.create(
    username: 'rj', 
    email: 'rj@email.com', 
    password_digest: BCrypt::Password.create('password'),
    cash: '5002.0'
  )

  # danny's stocks

  C1 = Stock.create(
    symbol: 'C',
    shares: 300,
    price: 78.79,
    user_id: 1
  )

  A1 = Stock.create(
    symbol: 'A',
    shares: 100,
    price: 78.79,
    user_id: 1
  )

  S1 = Stock.create(
    symbol: 'S',
    shares: 200,
    price: 78.79,
    user_id: 1
  )

  H1 = Stock.create(
    symbol: 'H',
    shares: 88,
    price: 78.79,
    user_id: 1
  )

  # michelles stocks

  C2 = Stock.create(
    symbol: 'C',
    shares: 300,
    price: 78.79,
    user_id: 2
  )

  A2 = Stock.create(
    symbol: 'A',
    shares: 100,
    price: 78.79,
    user_id: 2
  )

  S2 = Stock.create(
    symbol: 'S',
    shares: 200,
    price: 78.79,
    user_id: 2
  )

  H2 = Stock.create(
    symbol: 'H',
    shares: 88,
    price: 78.79,
    user_id: 2
  )

  # rj's stocks

  C3 = Stock.create(
    symbol: 'C',
    shares: 300,
    price: 78.79,
    user_id: 3
  )

  A3 = Stock.create(
    symbol: 'A',
    shares: 100,
    price: 78.79,
    user_id: 3
  )

  S3 = Stock.create(
    symbol: 'S',
    shares: 200,
    price: 78.79,
    user_id: 3
  )

  H3 = Stock.create(
    symbol: 'H',
    shares: 88,
    price: 78.79,
    user_id: 3
  )

  puts 'Seeding complete.'
