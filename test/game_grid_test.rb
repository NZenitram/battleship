require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/game_grid'

class GameGridTest < Minitest::Test
  def test_game_grid_exists
    assert_instance_of GameGrid, GameGrid.new
  end

  def test_game_grid_is_created
    easy = GameGrid.new
    medium = GameGrid.new("medium")
    hard = GameGrid.new("hard")
    assert_equal "a1", easy.grid.keys[0]
    assert_equal "b1", easy.grid.keys[4]
    assert_equal "c1", easy.grid.keys[8]
    assert_equal "d1", easy.grid.keys[12]
    assert_equal "a1", medium.grid.keys[0]
    assert_equal "c1", medium.grid.keys[16]
    assert_equal "d1", medium.grid.keys[24]
    assert_equal "h1", medium.grid.keys[56]
  end

  def test_user_can_place_ships
  end

end
