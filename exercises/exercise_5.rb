require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum(:annual_revenue)

puts "Total annual revenue across stores: " + @total_revenue.to_s
puts "Average annual revenue across stores: " + (@total_revenue / Store.count).to_s
puts "Number of stores making over $1M: " + Store.where("annual_revenue > ?", 1000000).count.to_s