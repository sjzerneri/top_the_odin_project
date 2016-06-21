##
# puts 'Hello there, and what\'s your name?'
# name = gets.chomp
# puts 'Your name is ' + name + '?  What a lovely name!'
# puts 'Pleased to meet you, ' + name + '.  :)'

puts 'Hello, what\'s your first name?'
fName = gets.chomp
puts 'Hello, what\'s your middle name?'
mName = gets.chomp
puts 'Hello, what\'s your last name?'
lName = gets.chomp
puts 'Pleased to meet you, ' + fName + " " + mName + " " + lName + '.  :)'
puts 'Did you know there are ' + (fName.length.to_s + mName.length.to_s + lName.length.to_s) + " letters in your name?"

#how do you add 3 numbers as strings into another string? line 13 outputs incorrectly