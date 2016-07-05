class Blackjack
	#variable:
	# => player_hand, dealer_hand
	#generate hand method

	def initialize
		@deck = {"1" => 4, "2" => 4, "3" => 4, "4" => 4, "5" => 4, "6" => 4, "7" => 4, "8" => 4, "9" => 4, "10" => 4, "J" => 4, "K" => 4, "Q" => 4, "A" => 4} 
    @dealer_hand = []
    @player_hand = []
  end

	def generate_card
    deck_array = []
    @deck.each do |key, value|
      value.times {deck_array << key}
    end
    card = deck_array.sample
    @deck[card] -= 1
    card
	end

  def win?
    return true if @player_hand.reduce(:+) == 21
    return false if @dealer_hand.reduce(:+) == 21
    compare(@player_hand, @dealer_hand)
  end

  def play
    @dealer_hand << generate_card
    @player_hand << generate_card
    @dealer_hand << generate_card
    @player_hand << generate_card
    puts @player_hand
    puts @dealer_hand[0]
    puts "Hit or pass?"
    user_input = gets.chomp.downcase
    if user_input == "hit"
      @player_hand << generate_card
    else

  end

end