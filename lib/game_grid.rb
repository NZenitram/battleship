require_relative 'grid'
require 'pry'

class GameGrid
  attr_accessor :grid

  def initialize(diffictuly="easy")
    @grid = check_difficulty(diffictuly)
  end

  def check_difficulty(difficulty)
    case difficulty
    when "easy"
      @grid = Grid.new.easy
    when "medium"
      @grid = Grid.new.medium
    # when "hard"
    #   @grid = Grid.new.hard
    end
  end

end
