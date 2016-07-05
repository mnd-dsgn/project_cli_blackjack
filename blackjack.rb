class Blackjack
	#variable:
	# => player_hand, dealer_hand
	#generate hand method

	def initialize
		@deck = {"1" => 4, "2" => 4, "3" => 4, "4" => 4, "5" => 4, "6" => 4, "7" => 4, "8" => 4, "9" => 4, "10" => 4, "J" => 4, "K" => 4, "Q" => 4, "A" => 4} 
	end

	def generate_hand
		card1 = @deck.keys.sample
	end	

end