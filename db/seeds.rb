# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u = User.new do |u|
  u.email      = 'admin@admin.com'
  u.first_name = 'Administrator'
  u.last_name  = 'Account'
  u.password   = 'password'
end

u.save!