# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


ceiling = 20
answer = 0

x = ceiling
while answer == 0
	
	for n in 2..ceiling
		if x % n != 0
			break
		end
		if n == ceiling
			answer = x
		end
	end
	x += ceiling
end

puts answer
