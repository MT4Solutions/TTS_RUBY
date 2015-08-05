# # my_array = []
	
# # 	my_array[0] = "Hello"

# # 	my_array[1] = 45

# # 	my_array[2] = [1,2,3]

# # puts my_array

# my_array = ["Hello", 45, [1,2,3]]

# puts my_array

# program_array = ["rock", "paper", "scissors", "exit"]
# program_answer = program_array[rand(program_array.length-1)].downcase

# puts "**************************************************************"
# puts "*                                                            *"
# puts "*    Hal 1000 Presents... Rock, Paper Scissors!              *"
# puts "*    Paper covers rock, rock smashes scissors,               *"
# puts "*    and scissors cut paper. Understand?                     *"
# puts "*                                                            *"
# puts "*    First to win 5 rounds wins the game!  Good Luck!        *"
# puts "*                                                            *"
# puts "**************************************************************"

# puts ""
# puts ""

# puts "Type [rock],[paper], or [scissors] and we'll see who wins... "
# puts "Type [exit] to leave program..."
# your_answer = gets.chomp.downcase

# while not program_array.include?(your_answer)
# 	puts "Type [rock],[paper], or [scissors] and we'll see who wins... "
# 	puts "Type [exit] to leave program..."
# 	your_answer = gets.chomp.downcase
# end

# if your_answer == "exit"
# 	abort("Thank you for playing. Goodbye.")
# end


# puts "I choose #{program_answer}, you chose #{your_answer}."

# if program_answer  == your_answer
# 	puts "Same answer. Try again..."
# elsif program_answer == "rock" and your_answer == "paper"
# 	puts "You win!"
# elsif program_answer == "rock" and your_answer == "scissors"
# 	puts "I win!"
# elsif program_answer == "paper" and your_answer == "rock"
# 	puts "I win!"
# elsif program_answer == "paper" and your_answer == "scissors"
# 	puts "You win!"
# elsif program_answer == "scissors" and your_answer == "rock"
# 	puts "You win!"
# elsif program_answer == "scissors" and your_answer == "paper"
# 	puts "I win!"
# end