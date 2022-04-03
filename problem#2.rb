# Given an array of integers, return a new array such that each element at index i of the new array is the product 
# of all the numbers in the original array except the one at i.
# For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input
# was [3, 2, 1], the expected output would be [2, 3, 6].
# Follow-up: what if you can't use divisio
require 'json'

abort('wrong number of params') unless ARGV.length == 1

p1 =  JSON.parse(ARGV[0]).map(&:to_i)

#TODO: Implement errors control 

output = []
p1.each do |i|
    p2 = p1.dup
    p2.delete(i)
    output << p2.inject(:*)
end

p output