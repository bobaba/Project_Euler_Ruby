# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

#Start Timer Here (bring to top of Process)
startTime = Time.now.to_f

x = 999
y = 999

check = 0
theseNums = []

x.downto(100) {|first|	
	y.downto(100) {|second|
		raw = first * second
		if raw.to_s == raw.to_s.reverse 
			if raw > check
				check = raw
				theseNums[0] = first
				theseNums[1] = second
			end
		end
	}
}

puts "#{theseNums[0]} x #{theseNums[1]} = #{check}"

#Answer should be: 906609
#Time Elapsed = 300 milliseconds

#Stop Timer - output elapsed time
endTime = Time.now.to_f
puts ""
puts "===[ Elapsed Time: #{((endTime - startTime)*1000).round(0)} milliseconds (#{(endTime - startTime).round(2)} seconds) ]==="


