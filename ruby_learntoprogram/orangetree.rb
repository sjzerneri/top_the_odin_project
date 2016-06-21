class OrangeTree

	def initialize
		puts "A new orange tree is planted.  What year is it?"
		@age = 0
		@tall = 0
		@year = gets.chomp
		@fruits = 0
		puts ""
	end

	def height
		puts "Your tree is currently " + @tall.to_s + " feet tall."
	end

	def oneYearPasses
		@year = @year.to_i + 1
		@age = @age + 1
		@tall = @tall + rand(0..3)
		@fruits = 0
		if @age > 2
			@fruits = @age * 10
		end
		puts "One year has passed.  It is now " + @year.to_s + " . Your orange tree is now " + @age.to_s + " year(s) old and " + @tall.to_s + " feet tall."
		if @age == 5
			puts "Your tree has died. It was " + @age.to_s + " years old in the year " + @year.to_s + ". Game over."
			exit
		end
	end

	def countOranges
		puts "There are currently " + @fruits.to_s + " oranges in your tree."
	end

	def pickOranges
		if @fruits < 1
			puts "Sorry there are no oranges to pick."
		else
			puts "You pick a delicious orange from the tree. It's delcious."
			@fruits = @fruits - 1
		end
	end

end

tree = OrangeTree.new 

tree.oneYearPasses
tree.countOranges
tree.oneYearPasses
tree.countOranges
tree.oneYearPasses
tree.countOranges
tree.oneYearPasses
tree.countOranges
tree.oneYearPasses
tree.countOranges
tree.pickOranges

