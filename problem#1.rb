# Given a list of numbers and a number k, return whether any two numbers from the list add up to k.
# For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
# Bonus: Can you do this in one pass?

require 'json'
abort('wrong number of params') unless ARGV.length == 2

p1 =  JSON.parse(ARGV[0]).map(&:to_i)
p2 = ARGV[1].to_i
#TODO: Implement errors control 
p !p1.permutation(2).to_a.map { |x| x.inject(:+) }.select { |x| x == p2 }.first.nil?

