# Given an array of integers, find the first missing positive integer in linear time and constant space. 
# In other words, find the lowest positive integer that does not exist in the array. 
# The array can contain duplicates and negative numbers as well.
# For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.

require 'json'
abort('wrong number of params') unless ARGV.length == 1

input =  JSON.parse(ARGV[0]).map(&:to_i).select{|x| x > 0}.sort

output = 0
input.each do |x|
    output = x+1
    break if !input.include?(output)
end

p output
