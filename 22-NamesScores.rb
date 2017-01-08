# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?

string = File.read("p022_names.txt")
arr = string.gsub('"', "").split(",")

# index of the letter is also the score!
alphaScores = ["","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
count = 1
ttlNameScores = 0

arr.sort.each do |nm|
	nameScore = 0
	for ct in 0...nm.size
		nameScore += alphaScores.index(nm[ct].downcase)
	end
	ttlNameScores += nameScore * count
count += 1
end

puts "The total of all name scores is #{ttlNameScores}"


