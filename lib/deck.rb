require_relative 'card'
class Deck
  SUITS = ['♦', '♣', '♠', '♥']
  RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

  attr_accessor :cards

  def initialize
    @cards = build_deck
  end

  def build_deck
    cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        cards << Card.new(suit, rank)
      end
    end
    cards.shuffle!
  end

  def initial_hand(player) #used to be called deal
    cards = []
    2.times do
      cards << deal(player)
    end
    return cards
  end

  def deal(player) # used to be called hit
    card = cards.pop
    puts "#{player} was dealt #{card.to_output}"
    return card
  end
end
