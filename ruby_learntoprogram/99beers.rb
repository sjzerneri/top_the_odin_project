oldNumber = 99
newNumber = 98

while newNumber >= 0
	song = "#{oldNumber} bottles of beer on the wall. #{oldNumber} bottles of beer.  You take one down, you pass it around, #{newNumber} bottles of beer on the wall!"
	puts song
	oldNumber = newNumber
	newNumber = newNumber - 1
end


