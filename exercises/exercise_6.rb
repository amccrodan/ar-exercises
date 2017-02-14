require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Andrew", last_name: "McCrodan", hourly_rate: 40)
@store1.employees.create(first_name: "Dingo", last_name: "Lad", hourly_rate: 200)

@store2.employees.create(first_name: "Dave", last_name: "Grohl", hourly_rate: 101)
@store2.employees.create(first_name: "Josh", last_name: "Homme", hourly_rate: 100)
@store2.employees.create(first_name: "Trent", last_name: "Reznor", hourly_rate: 99)