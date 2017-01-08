# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.
longestChain = 0
startingNumber = 0
theChain = []

x = 1
while x < 1000000
	sequence = [x]

	n = x
	until n == 1
		if n % 2 == 0
			n = n / 2
			sequence.push(n)
		else
			n = (3 * n) + 1
			sequence.push(n)
		end
	end

	if sequence.count > longestChain
		longestChain = sequence.count
		startingNumber = x
		theChain = sequence
	end

x += 1
end

puts "The Longest Collatz Chain under 1,000,000 starts at #{startingNumber} and has #{longestChain} permutations."
puts "Here it is:"
puts ""
puts theChain.to_s