# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2^1000?

twoTotheThousandth = 2 ** 1000

stringed = twoTotheThousandth.to_s.split("")

addEm = 0
stringed.each do |n|
	addEm += n.to_i
end

puts addEm


