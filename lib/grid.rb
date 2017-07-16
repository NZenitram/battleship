require 'pry'

class Grid
  def easy
    final = ("A1".."A4").to_a + ("B1".."B4").to_a + ("C1".."C4").to_a +
    ("D1".."D4").to_a
    grid = {}
    final.each_with_index{|k,v| grid[k] = false}
    grid
  end

  def medium
    final = ("A1".."A8").to_a + ("B1".."B8").to_a + ("C1".."C8").to_a +
    ("D1".."D8").to_a + ("E1".."E8").to_a + ("F1".."F8").to_a + ("G1".."G8").to_a + ("H1".."H8").to_a
    grid = {}
    final.each_with_index{|k,v| grid[k] = false}
    grid
  end

  # def hard
  #   final = ("a1".."a12").to_a + ("b1".."b12").to_a + ("c1".."c12").to_a +
  #   ("d1".."d12").to_a + ("e1".."e12").to_a + ("f1".."f12").to_a + ("g1".."g12").to_a + ("h1".."h12").to_a +
  #   ("i1".."i12").to_a + ("j1".."j12").to_a + ("k1".."k12").to_a + ("l1".."l12").to_a
  #   grid = {}
  #   final.each_with_index{|k,v| grid[k] = false}
  #   grid
  # end
end

grid = {
  "A1" => false, "A2" => false, "A3" => false, "A4" => false,
  "B1" => false, "B2" => false, "B3" => false, "B4" => false,
  "C1" => false, "C2" => false, "C3" => false, "C4" => false,
  "D1" => false, "D2" => false, "D3" => false, "D4" => false,
}
