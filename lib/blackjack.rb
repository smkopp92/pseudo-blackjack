require_relative "card"
require_relative "deck"
require_relative "hand"
require "pry"

class Blackjack
  def initialize
    set_up_game
    play_game
  end

  def set_up_game
    @deck = Deck.new
    @player = @deck.initial_hand("Player")
    @dealer = @deck.initial_hand("Dealer")
  end

  def play_game
    binding.pry
    #TAKE PLAYER TURN
    #while is_playing = true
      #show the player their score
      #ask our player if they want to hit or stand
      #if they say hit then we deal a new card to the player hand from the deck
        #if player_score = 21 BLACKJACK GAME OVER PLAYER WINS => return
        #elsif player_score > 21 BUST GAME OVER PLAYER LOSES  => return
      #if they say stand we set playing? = false
    #end

    #TAKE DEALER TURN
    #while dealer score < 17
      #deal hits
    #end

    #SEE WHO WINS
    #Player wins if player score > dealer score or dealer busted
    #Dealer wins if dealer score >= player score
  end
end

Blackjack.new
