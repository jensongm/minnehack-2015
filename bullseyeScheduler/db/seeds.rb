# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#



Role.create(name: 'Employee', description: 'This is a general target employee')
Role.create(name: 'Manager', description: 'This is a general target employee')
Role.create(name: 'Admin', description: 'This is a general target employee')
