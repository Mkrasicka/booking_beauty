require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 10.times do
#   Service.create!(
#     name: ,
#     timing: ,
#   )
# end
puts "Cleaning database...."
Service.destroy_all
Employee.destroy_all
Department.destroy_all
Level.destroy_all
User.destroy_all
Appointment.destroy_all
Role.destroy_all
# AppointmentsService.destroy_all
# Client.destroy_all


# Payment.destroy_all

puts "Creating departments"
Department.create!([{ specialty: "Ladies hair" }, { specialty: "Gents hair" }, { specialty: "Beauty" }])

puts "Creating roles"
Role.create!([{ name: "Colorist"}, {name: "Stylist"}, {name: "Beautician"}])

puts "Creating users"
users = User.create([{ email: "user1@example.com", password: "password1", name: Faker::Name.name, surname: Faker::Name.last_name },
                     { email: "user2@example.com", password: "password2", name: Faker::Name.name, surname: Faker::Name.last_name }])

puts "Creating level"
Level.create!([{ name: "Junior"}, {name: "Stylist"}, {name: "Colorist"}, {name: "Senior"}])

puts "Creating employees"
20.times do
  Employee.create!(
    user_id: User.all.sample.id,
    level_id: Level.all.sample.id,
    role_id: Role.all.sample.id
  )
end

puts "Creating services"
ladies_department = Department.find_by(specialty: "Ladies hair")
gents_department = Department.find_by(specialty: "Gents hair")
beauty_department = Department.find_by(specialty: "Beauty")

colorist_role = Role.find_by(name: "Colorist")
stylist_role = Role.find_by(name: "Stylist")
beautician_role = Role.find_by(name: "Beautician")

Employee.all.each do |employee|
  if employee.role_id == colorist_role.id
    Service.create!(
      name: "Balayage",
      employee_id: employee.id,
      department_id: ladies_department.id,
      timing: 90,
      price: Faker::Number.number(digits: 3)
    )
  elsif employee.role_id == stylist_role.id
    Service.create!(
      name: "Gents Haircut",
      employee_id: employee.id,
      department_id: gents_department.id,
      timing: 60
    )
  elsif employee.role_id == beautician_role.id
    Service.create!(
      name: "Eye Brows",
      employee_id: employee.id,
      department_id: beauty_department.id,
      timing: 30
    )
  end
end

puts "Creating appointments"
20.times do
  start_time = Faker::Time.between(from: DateTime.now, to: DateTime.now + 7, format: :default)
  duration = [30, 60, 90].sample.seconds
  finish_time = start_time + duration.to_s

  Appointment.create(
    start: start_time,
    finish: finish_time,
    user: User.all.sample
  )
end

puts "Creating appointments_service"

Appointment.all.each do |appointment|
  20.times do
    service = Service.all.sample
    appointment.services << service
  end
end
