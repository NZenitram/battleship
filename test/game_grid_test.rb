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
    # hard = GameGrid.new("hard")
    assert_equal "A1", easy.grid.keys[0]
    assert_equal "B1", easy.grid.keys[4]
    assert_equal "C1", easy.grid.keys[8]
    assert_equal "D1", easy.grid.keys[12]
    assert_equal "A1", medium.grid.keys[0]
    assert_equal "C1", medium.grid.keys[16]
    assert_equal "D1", medium.grid.keys[24]
    assert_equal "H1", medium.grid.keys[56]
  end

  def test_user_can_place_horizontal_ships
    easy = GameGrid.new
    easy.place_ships("A1", "A4")
    assert_equal true, easy.grid["A1"]
    assert_equal true, easy.grid["A2"]
    assert_equal true, easy.grid["A3"]
  end

  def test_a_user_gets_an_error_when_placing_ships_in_occupied_grids
    easy = GameGrid.new
    easy.place_ships("A1", "A4")
    assert_equal "A3 is occupied by another ship", easy.place_ships("A3", "A4")
  end
end
