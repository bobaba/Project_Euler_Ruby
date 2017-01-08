# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def is_prime(y)
	bool = true
	if y % 2 == 0
		bool = false
	elsif
		(3...y).step(2) do |n|
			if y % n == 0
				bool = false
				break
			end
		end
	end

	return bool
end

x = 600851475143
y = x

2.upto(x) {|n|
	if is_prime(n)	
		if x % n == 0
			y = y / n				
		end
		if y == 1
			puts n
			break
		end
	end
}
