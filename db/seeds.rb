# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(fname: 'Test', lname: 'User', email: 'test@test.com', password: 'password')
goal = Goal.create(name: 'One Million Dollars', date: '2030-1-1', currency: 'USD', value: 1000000, user_id: user.id)
asslibhome = Asslib.create(name: 'Home', description: 'Primary Residence', altype: 'asset', currency: 'USD', user_id: user.id)
asslibinv = Asslib.create(name: 'Stocks', description: 'Stocks & Bonds', altype: 'asset', currency: 'USD', user_id: user.id)
