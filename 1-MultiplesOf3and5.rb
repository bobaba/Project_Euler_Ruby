# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.
startTime = Time.now.to_f
sum = 0

n = 1
while n < 1000
	if n % 3 == 0 || n % 5 == 0
		sum += n
	end
	n+=1
end

puts sum

endTime = Time.now.to_f
puts "Took #{endTime - startTime} seconds to solve!"

#---[ Alternate which Runs in half the time! ]---
     # based on observed patterns in above #

# startTime = Time.now.to_f

# sum = 0

# patternObserved = [3,2,1,3,1,2,3]

# x = 0
# n = 0
# while n < 1000
# 	sum += n
# 	n += patternObserved[x]
# 		if x < 6
# 			x += 1
# 		else
# 			x = 0
# 		end
# end

# puts sum
# endTime = Time.now.to_f
# puts "Took #{endTime - startTime} seconds to solve!"