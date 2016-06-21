puts "Please input a starting year."
year1 = gets.chomp

puts "Please input an ending year."
year2 = gets.chomp
puts ''

while year1.to_i <= year2.to_i

	if year1.to_f % 4 == 0
		puts year1
	elsif year1.to_f%100 == 0
	elsif year1.to_f%400 == 0
		puts year1
	end

	year1 = year1.to_i + 1
end



