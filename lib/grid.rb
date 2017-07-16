require 'pry'

class Grid
  def easy
    final = ("a1".."a4").to_a + ("b1".."b4").to_a + ("c1".."c4").to_a +
    ("d1".."d4").to_a
    grid = {}
    final.each_with_index{|k,v| grid[k] = false}
    grid
  end

  def medium
    final = ("a1".."a8").to_a + ("b1".."b8").to_a + ("c1".."c8").to_a +
    ("d1".."d8").to_a + ("e1".."e8").to_a + ("f1".."f8").to_a + ("g1".."g8").to_a + ("h1".."h8").to_a
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
