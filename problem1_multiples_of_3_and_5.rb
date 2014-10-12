# problem: find the sum of all multiples of 3 and 5 below 1000

require 'set'

NUM1 = 3
NUM2 = 5
CEIL = 1000

class Multiples

	# given a set of numbers, sum them
	def self.sum_multiples bag
		sum = 0
		bag.each {
			|num| sum += num
		}
		return sum

	end

	# find multiples of 2 numbers less than a ceiling and store them in an array
	def self.find_multiples num, ceiling 
		current = num
		bag = Set.new  
		while current < ceiling
			bag << current
			current += num
		end
		return bag
	end

end

puts Multiples.sum_multiples(Multiples.find_multiples(NUM1, CEIL).merge(Multiples.find_multiples(NUM2, CEIL)))