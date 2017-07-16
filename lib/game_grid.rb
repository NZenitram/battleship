require_relative 'grid'
require 'pry'

class GameGrid
  attr_accessor :grid

  def initialize(difficulty="easy")
    @grid = check_difficulty(difficulty)
    @grid_width = Math.sqrt(@grid.length).to_i
    @grid_height = Math.sqrt(@grid.length).to_i
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

  def place_ships(pos_start, pos_end)
    positions = (pos_start..pos_end).to_a
    start_chars = pos_start.chars
    end_chars = pos_end.chars
    ship_length = end_chars[1].to_i - start_chars[1].to_i + 1
    if start_chars[0] == end_chars[0] && start_chars[1].to_i + ship_length - 1 <= @grid_width
      positions.each_with_index do |pos|
        if @grid[pos] == true
          p "#{pos} is occupied by another ship"
          return "#{pos} is occupied by another ship"
        else
          @grid[pos] = true
        end
      end
    end
  end
end
