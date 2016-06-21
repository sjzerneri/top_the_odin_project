puts "Hello There!"
empty_array = []
answer = 'blank'

while answer != ''
	puts "What would you like to add to the array? (when finished, press 'Enter')"
	answer = gets.chomp
	empty_array = empty_array.push answer
	puts "------------------------"
	puts "Your array values:"
	puts " "
	puts empty_array.sort
	puts "------------------------"
end