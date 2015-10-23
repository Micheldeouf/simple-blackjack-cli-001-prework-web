def welcome
	puts "Welcome to the Blackjack Table"
end

def deal_card
	cards = [1,2,3,4,5,6,7,8,9,10,11]
        card_out = cards.sample
end

def display_card_total(card_total)

        puts "Your cards add up to #{card_total}"
end

def prompt_user
	puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
	gets
end

def end_game(card_total)
	puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round

	total = 0

	2.times do
		deal_card
		carte = deal_card
		total += carte
	end

	display_card_total(total)
	total
end

def hit?(number)
	
	prompt_user
	user_input = get_user_input

	if user_input == "s"
		nil
	elsif user_input == "h"
		new_card = deal_card
		number += new_card
	else
		invalid_command
	end

	return number

end

def invalid_command

	puts "Please enter a valid command"
	prompt_user

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner


	welcome
	card_total = initial_round
	until card_total > 21
		card_total = hit?(card_total)
		display_card_total(card_total)
	end

	end_game(card_total)
 end
