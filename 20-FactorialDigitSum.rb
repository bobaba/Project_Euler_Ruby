# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

n = 100
factorial = 1

n.downto(1) do |x|
	factorial = factorial * x
end

arrOfFactorials = factorial.to_s.split("")

addEmUp = 0
arrOfFactorials.each do |i|
	addEmUp += i.to_i
end

puts addEmUp