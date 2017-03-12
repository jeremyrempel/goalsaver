# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(fname: 'Test', lname: 'User', email: 'test@test.com', password: 'password')
goal = Goal.create(name: 'One Million Dollars', start_date: '2000-1-1' , end_date: '2030-1-1', currency: 'USD', start_value: 100000, end_value: 1000000, rate_of_return: 0.1, rate_of_savings: 18000, user_id: user.id)
asslibhome = Asslib.create(name: 'Home', description: 'Primary Residence', altype: 'asset', currency: 'USD', user_id: user.id)
asslibinv = Asslib.create(name: 'Stocks', description: 'Stocks & Bonds', altype: 'asset', currency: 'USD', user_id: user.id)

Valuation.create(date: '2006-01-01', value: 100000, user: user, asslib: asslibinv)
Valuation.create(date: '2007-01-01', value: 150000, user: user, asslib: asslibinv)
Valuation.create(date: '2008-01-01', value: 20000, user: user, asslib: asslibinv)
Valuation.create(date: '2009-01-01', value: 25000, user: user, asslib: asslibinv)
Valuation.create(date: '2010-01-01', value: 26000, user: user, asslib: asslibinv)
Valuation.create(date: '2011-01-01', value: 60000, user: user, asslib: asslibinv)
Valuation.create(date: '2012-01-01', value: 80000, user: user, asslib: asslibinv)
Valuation.create(date: '2013-01-01', value: 100000, user: user, asslib: asslibinv)
Valuation.create(date: '2014-01-01', value: 150000, user: user, asslib: asslibinv)
Valuation.create(date: '2015-01-01', value: 200000, user: user, asslib: asslibinv)
Valuation.create(date: '2016-01-01', value: 300000, user: user, asslib: asslibinv)

Valuation.create(date: '2006-01-01', value: 280000, user: user, asslib: asslibhome)
Valuation.create(date: '2007-01-01', value: 275000, user: user, asslib: asslibhome)
Valuation.create(date: '2008-01-01', value: 275000, user: user, asslib: asslibhome)
Valuation.create(date: '2009-01-01', value: 275000, user: user, asslib: asslibhome)
Valuation.create(date: '2010-01-01', value: 350000, user: user, asslib: asslibhome)
Valuation.create(date: '2011-01-01', value: 260000, user: user, asslib: asslibhome)
Valuation.create(date: '2012-01-01', value: 280000, user: user, asslib: asslibhome)
Valuation.create(date: '2013-01-01', value: 300000, user: user, asslib: asslibhome)
Valuation.create(date: '2014-01-01', value: 400000, user: user, asslib: asslibhome)
Valuation.create(date: '2015-01-01', value: 500000, user: user, asslib: asslibhome)
Valuation.create(date: '2016-01-01', value: 480000, user: user, asslib: asslibhome)
