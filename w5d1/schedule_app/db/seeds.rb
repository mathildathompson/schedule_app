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
User.delete_all

l1 = Location.create!( name: 'General Assembly', location: '9 Back Hill, 4th Floor, London, England‎')

classroom1 = Classroom.create!( name: 'Room 1', location_id: l1.id)
classroom2 = Classroom.create!( name: 'Room 2', location_id: l1.id)

p1 = Programme.create!( name: 'wdi', description: "Build a work-ready skill set and fluency in full stack web development. Develop a portfolio of projects individually and in small teams that are ready to present to employers. Prepare for an internship or entry-level job as a jr. web developer.")
p2 = Programme.create!( name: 'ux', description: "Build a work-ready skill set and fluency in full stack web development. Develop a portfolio of projects individually and in small teams that are ready to present to employers. Prepare for an internship or entry-level job as a jr. web developer.")
p3 = Programme.create!( name: 'fewd', description: "Build a work-ready skill set and fluency in full stack web development. Develop a portfolio of projects individually and in small teams that are ready to present to employers. Prepare for an internship or entry-level job as a jr. web developer.")
p4 = Programme.create!( name: 'bewd', description: "Build a work-ready skill set and fluency in full stack web development. Develop a portfolio of projects individually and in small teams that are ready to present to employers. Prepare for an internship or entry-level job as a jr. web developer.")

wdi1 = Course.create!( name:'wdi1', price: 8000, start_date: 20140901, end_date: 20141201)
wdi2 = Course.create!( name: 'wdi2', price: 8000, start_date: 20141001, end_date: 20141201)
ux1 = Course.create!( name: 'ux1', price: 8000, start_date: 20141015, end_date: 20141215)
ux2 = Course.create!( name: 'ux2', price: 8000, start_date: 20140915, end_date:20141215)
fewd1 = Course.create!( name: 'fewd1', price: 4000, start_date:20140901, end_date: 20141001)
fewd2 = Course.create!( name: 'fewd2', price: 4000, start_date:20141001, end_date:20141101)
bewd1 = Course.create!( name: 'bewd1', price: 4000, start_date: 20140915, end_date:20141015)
bewd2 = Course.create!( name: 'bewd2', price: 4000, start_date:20141215, end_date:20141215)

instructor1 = User.create!( name: 'Gerry', email: 'gerry@yahoo.com', role:     'instructor', phone_number: '07889548339', password: 'password', password_confirmation: 'password')
instructor2 = User.create!( name: 'Mathilda', email: 'mathida@yahoo.com', role: 'instructor', phone_number: '075154442233', password: 'password')
instructor3 = User.create!( name: 'Tobias', email: 'tobias@yahoo.com',  role: 'instructor', phone_number: '076123333389', password: 'password')
instructor4 = User.create!( name: 'Dave', email: 'dave@yahoo.com',  role: 'instructor', phone_number: '07569998833', password: 'password')

wdi1.instructors << instructor1
wdi1.instructors << instructor2
wdi2.instructors << instructor3
wdi2.instructors << instructor4
ux1.instructors << instructor4
ux2.instructors << instructor3
fewd1.instructors << instructor1
fewd2.instructors << instructor2
bewd1.instructors << instructor4



student1 = User.create!( name: 'Peter', email: 'peter@yahoo.com',  role: 'student', phone_number: '07569934833', password: 'password')
student2 = User.create!( name: 'Paula', email: 'paula@yahoo.com',  role: 'student', phone_number: '07567698833', password: 'password')
student3 = User.create!( name: 'Patrick', email: 'patrick@yahoo.com',  role: 'student', phone_number: '075691298833', password: 'password')
student4 = User.create!( name: 'Paul', email: 'paul@yahoo.com',  role: 'student', phone_number: '07566798833', password: 'password')
student5 = User.create!( name: 'Philip', email: 'philip@yahoo.com',  role: 'student', phone_number: '07569388833', password: 'password')
student6 = User.create!( name: 'Philippa', email: 'philippa@yahoo.com',  role: 'student', phone_number: '075697658833', password: 'password')
student7 = User.create!( name: 'Jack', email: 'jack@yahoo.com',  role: 'student', phone_number: '07569934833', password: 'password')
student8 = User.create!( name: 'John', email: 'john@yahoo.com',  role: 'student', phone_number: '07567698833', password: 'password')
student8 = User.create!( name: 'Jackie', email: 'jackie@yahoo.com',  role: 'student', phone_number: '075691298833', password: 'password')
student9 = User.create!( name: 'Harry', email: 'harry@yahoo.com',  role: 'student', phone_number: '07566798833', password: 'password')
student10 = User.create!( name: 'William', email: 'william@yahoo.com',  role: 'student', phone_number: '07569388833', password: 'password')
student11 = User.create!( name: 'Charles', email: 'charles@yahoo.com',  role: 'student', phone_number: '075697658833', password: 'password')

wdi1.students << student1
wdi1.students << student1
wdi1.students << student2
wdi2.students << student5
wdi2.students << student4
wdi2.students << student3
wdi2.students << student11
ux1.students << student9
ux1.students << student6
ux1.students << student7
ux2.students << student8
ux2.students << student10
ux2.students << student1
ux2.students << student2
fewd1.students << student5
fewd1.students << student4
fewd1.students << student3
fewd2.students << student11
fewd2.students << student9
bewd1.students << student6
bewd1.students << student7
bewd2.students << student8
bewd2.students << student10
bewd2.students << student1





