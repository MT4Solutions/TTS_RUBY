# This method tests user input to make sure it is an integer
def is_number? string
	true if Integer(string) rescue false
end

# This method gives response based on temp entered
def going_hiking(temp)
	if temp.to_i > 105 || temp.to_i < -5
		puts "#{temp} is not a valid temperature for Charlotte"
	elsif temp.to_i >= 50
		puts "#{temp} degrees is perfect for hiking!"
	else
		puts "#{temp} degrees is way too cold for hiking!"
	end
end

# Main program
puts "Let's go hiking! But how cold is it outside?"
temp = gets.chomp

# While loop that tests user input before executing going_hiking method
while is_number?(temp) == false
	puts "Not valid input! Please type in an integer(whole number): "
	puts "or [stop] to exit program: "
	temp = gets.chomp
	if temp == "stop"
		abort("Exiting... Thank You.")
	end
end

puts going_hiking(temp)