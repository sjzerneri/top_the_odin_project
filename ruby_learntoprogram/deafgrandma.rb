puts "Hi there sonny, it's your dear ma Mima.  How was your day?"

answer1 = gets.chomp
answer2 = ""
answer3 = ""

while answer1 != 'bye'.upcase
	if answer1 == answer1.upcase
		year = rand(1930..1950)
		puts "NO, NOT SINCE #{year}!"
		answer1 = gets.chomp
	else
		puts "HUH?! SPEAK UP, SONNY!"
		answer1 = gets.chomp
	end 
end

puts "WHAT DID YOU SAY?! HI??"
answer2 = gets.chomp

while answer2 != "BYE"
	if answer2 != "BYE" 
		puts "NO, NO THEY'RE LEVIS"
		answer2 = gets.chomp	
	end
end

puts "WHAT DID YOU SAY?! FLY??"
answer3 = gets.chomp

while answer3 != "BYE"	
	if answer3 != "BYE"
		puts "YOU LIKE MY THIGHS?"
		answer3 = gets.chomp	
	end
end

puts "Bye now sweetheart!"