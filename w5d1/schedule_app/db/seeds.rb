# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.delete_all
Course.delete_all
Programme.delete_all
Classroom.delete_all
Users.delete_all

l1 = Location.create!( name: 'General Assembly', address: '9 Back Hill, 4th Floor, London, England‎')

classroom1 = Classroom.create!( name: 'classroom1', location_id: london.id)
classroom2 = Classroom.create!( name: 'classroom2', location_id: london.id)

p1 = Programme.create!( name: 'wdi', description: "Build a work-ready skill set and fluency in full stack web development. Develop a portfolio of projects individually and in small teams that are ready to present to employers. Prepare for an internship or entry-level job as a jr. web developer.")
p2 = Programme.create!( name: 'ux', description: "Build a work-ready skill set and fluency in full stack web development. Develop a portfolio of projects individually and in small teams that are ready to present to employers. Prepare for an internship or entry-level job as a jr. web developer.")
p3 = Programme.create!( name: 'fewd', description: "Build a work-ready skill set and fluency in full stack web development. Develop a portfolio of projects individually and in small teams that are ready to present to employers. Prepare for an internship or entry-level job as a jr. web developer.")
p4 = Programme.create!( name: 'bewd', description: "Build a work-ready skill set and fluency in full stack web development. Develop a portfolio of projects individually and in small teams that are ready to present to employers. Prepare for an internship or entry-level job as a jr. web developer.")

wdi1 = Course.create!( name: 'wdi1', price: 8000, start_date: 20140901, end_date: 20141201, programme_id: wdi1.id, classroom_id: classroom1.id)
wdi2 = Course.create!( name: 'wdi2', price: 8000, start_date: 20141001, end_date: 20141201, programme_id: wdi2.id, classroom_id: classroom1.id)
ux1 = Course.create!( name: 'ux1', price: 8000, start_date: 20141015, end_date: 20141215, programme_id: ux1.id, classroom_id: classroom2.id)
ux2 = Course.create!( name: 'ux2', price: 8000, start_date: 20140915, end_date:20141215, programme_id: ux2.id, classroom_id: classroom2.id)
fewd1 = Course.create!( name: 'fewd1', price: 4000, start_date:20140901, end_date: 20141001, programme_id: fewd.id, classroom_id: classroom1.id)
fewd2 = Course.create!( name: 'fewd2', price: 4000, start_date:20141001, end_date:20141101, programme_id: fewd2.id, classroom_id: classroom1.id)
bewd1 = Course.create!( name: 'bewd1', price: 4000, start_date: 20140915, end_date:20141015, programme_id: fewd2.id, classroom_id: classroom2.id)
bewd2 = Course.create!( name: 'bewd2', price: 4000, start_date:20141215, end_date:20141215, programme_id: bewd2.id, classroom_id: classroom2.id)






user1 = User.create!( name: 'Gerry', email: 'gerry@yahoo.com', role: 'staff', phone_number: '07889548339', password: 'password')
user2 = User.create!( name: 'Mathilda', email: 'mathida@yahoo.com', role: 'staff', phone_number: '075154442233', password: 'password')
user3 = User.create!( name: 'Tobias', email: 'tobias@yahoo.com',  role: 'staff', phone_number: '076123333389', password: 'password')
user4 = User.create!( name: 'Dave', email: 'dave@yahoo.com',  role: 'staff', phone_number: '07569998833', password: 'password')





