#sets game play_again counter to y
play_again = "y"

#game title	
	puts "**************************************************************"
	puts "*                                                            *"
	puts "*    Hal 1000 Presents... Rock, Paper Scissors!              *"
	puts "*    Paper covers rock, rock smashes scissors,               *"
	puts "*    and scissors cut paper. Understand?                     *"
	puts "*                                                            *"
	puts "*    First to win 5 rounds wins the game!  Good Luck!        *"
	puts "*                                                            *"
	puts "**************************************************************"

#starts game loop
while play_again == "y"
	puts ""
	puts ""
	puts "Type [rock],[paper], or [scissors] and we'll see who wins... "
	puts "Type [exit] to leave program..."

#sets scoreboard to 0
	program_score = 0
	your_score = 0

#sets array options and randomizes out put for first 3 elements in array
	until your_score == 5 || program_score == 5
		program_array = ["rock", "paper", "scissors", "exit"]
		program_answer = program_array[rand(program_array.length-1)].downcase
		your_answer = gets.chomp.downcase
		puts""

#tests for valid input and offers exit or changes score
		while not program_array.include?(your_answer)
			puts "Invalid input. Please read instructions above."
			puts ""
			your_answer = gets.chomp.downcase
		end
		if your_answer == "exit"
			abort("Thank you for playing. Goodbye.")
		end
		puts "I choose #{program_answer}. You chose #{your_answer}."
		if program_answer  == your_answer
			puts "We have the same answer. Try again..."
		elsif program_answer == "rock" and your_answer == "paper"
			puts "You win the round."
			your_score += 1
		elsif program_answer == "rock" and your_answer == "scissors"
			puts "I win the round."
			program_score += 1
		elsif program_answer == "paper" and your_answer == "rock"
			puts "I win the round."
			program_score += 1
		elsif program_answer == "paper" and your_answer == "scissors"
			puts "You win the round."
			your_score += 1
		elsif program_answer == "scissors" and your_answer == "rock"
			puts "You win the round."
			your_score += 1
		elsif program_answer == "scissors" and your_answer == "paper"
			puts "I win the round."
			program_score += 1
		end
	puts ""
	puts "My score is #{program_score}. Your score is #{your_score}"
	puts ""
	end

#determines winner
	if your_score > program_score
		puts "You win the game!"
	else puts "I win the game!"
	end
#starts game over or exits	
	puts "Would you like to play again(y/n): "
	play_again = gets.chomp.downcase
end

puts "Thank you for playing. Goodbye."
