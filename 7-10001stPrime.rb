# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?
startTime = Time.now.to_f
primes = [2,3,5,7]


for n in 8..999999999999 #fix this number 
	for i in 0...primes.size
		if n % primes[i] == 0
			break
		end
		if i == primes.size - 1
			primes.push(n)
		end
	end

	if primes.size == 10001
		break
	end
end

puts primes.last

endTime = Time.now.to_f
puts (endTime - startTime).to_s + " seconds"
#Takes about 5.215 seconds to find the 10001st prime... how can this be improved?
