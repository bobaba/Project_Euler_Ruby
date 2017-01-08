# You are given the following information, but you may prefer to do some research for yourself.

# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.

# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.

# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

			  #J  F  M  A  M  J  J  A  S  O  N  D	
daysInMonth = [31,28,31,30,31,30,31,31,30,31,30,31]

year = 1901

		     #M T W T F S S 
# weekNums = [1,2,3,4,5,6,7] #<-- For Reference Only!

countingSundays = 0
startingDay = 2

until year == 2001
	if year % 100 == 0 
		if year % 400 == 0
			daysInMonth[1] = 29
		else
			daysInMonth[1] = 28
		end
	elsif year % 4 == 0
		daysInMonth[1] = 29
	else
		daysInMonth[1] = 28
	end

	daysInMonth.each do |mo|
		if startingDay == 7
			countingSundays += 1
		end		
		startOfNextMo = mo % 7
		if startOfNextMo + startingDay > 7
			startingDay = startOfNextMo - (7 - startingDay)
		else
			startingDay = startOfNextMo + startingDay
		end
	end

year += 1
end

puts "From Jan 1901 to December 2000, there are " + countingSundays.to_s + " Months that begin with Sunday!"