# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  puts 'Seeding started...'
  puts 'Creating Users:'

  # create sample users

  danny = User.create(
    username: 'danny', 
    email: 'danny@email.com', 
    password_digest: BCrypt::Password.create('password'),
    cash: '5000.0'
  )

  puts 1

  mlee = User.create(
    username: 'mlee', 
    email: 'mlee@email.com', 
    password_digest: BCrypt::Password.create('password'),
    cash: '5001.0'
  )

  puts 2

  rj = User.create(
    username: 'rj', 
    email: 'rj@email.com', 
    password_digest: BCrypt::Password.create('password'),
    cash: '5002.0'
  )

  puts 3

  puts "Creating stocks: "

  # danny's stocks

  C1 = Stock.create(
    symbol: 'C',
    shares: 300,
    price: 75.79,
    user_id: 1
  )

  A1 = Stock.create(
    symbol: 'A',
    shares: 150,
    price: 82.82,
    user_id: 1
  )

  S1 = Stock.create(
    symbol: 'S',
    shares: 300,
    price: 7.70,
    user_id: 1
  )

  H1 = Stock.create(
    symbol: 'H',
    shares: 88,
    price: 87.94,
    user_id: 1
  )

  puts "User 1 stocks created."
  
  # michelles stocks
  
  C2 = Stock.create(
    symbol: 'C',
    shares: 300,
    price: 78.79,
    user_id: 2
  )

  A2 = Stock.create(
    symbol: 'A',
    shares: 200,
    price: 55.82,
    user_id: 2
  )

  S2 = Stock.create(
    symbol: 'S',
    shares: 300,
    price: 10.70,
    user_id: 2
  )

  H2 = Stock.create(
    symbol: 'H',
    shares: 188,
    price: 8.79,
    user_id: 2
  )

  puts "User 2 stocks created."

  # rj's stocks

  C3 = Stock.create(
    symbol: 'C',
    shares: 300,
    price: 58.79,
    user_id: 3
  )

  A3 = Stock.create(
    symbol: 'A',
    shares: 100,
    price: 40.82,
    user_id: 3
  )

  S3 = Stock.create(
    symbol: 'S',
    shares: 150,
    price: 10.70,
    user_id: 3
  )

  H3 = Stock.create(
    symbol: 'H',
    shares: 18,
    price: 42.20,
    user_id: 3
  )

  puts "User 3 stocks created."

  puts 'Seeding complete.'
