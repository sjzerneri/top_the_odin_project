#Code doesn't work - can't send out how old person is (error around line 17)

puts "Hello, how are you?"
puts "What year were you born?"
year = gets.chomp
puts "What month were you born?"
month = gets.chomp
puts "What day were you born?"
day = gets.chomp


birthday = Time.mktime(year.to_i, month.to_i, day.to_i)
now = Time.new 		

years_old = now - birthday

years_old.to_i.times do 
	puts 'spank'
end
