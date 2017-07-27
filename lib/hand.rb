require_relative 'deck'

class Hand
  attr_reader :cards

  def initialize(cards = [])
    @cards = cards
  end

  def calculate_hand
    #define this
  end
end
