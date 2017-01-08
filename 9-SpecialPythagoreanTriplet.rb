# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

a = 1
b = 0
c = 0
productABC = 0
reveal = ""

for n in a...500
	b = n + 1
	for m in b...500
		c = m + 1
		for i in c...500
			if (n*n) + (m*m) == (i*i)
				if n + m + i == 1000
					productABC = n * m * i
					reveal = "#{n}^2 + #{m}^2 = #{i}^2"
				end
			end

		end
	end
end

puts productABC
puts reveal



