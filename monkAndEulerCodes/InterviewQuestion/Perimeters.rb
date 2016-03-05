module Perimeter
  def perimeter
    sides.inject(0) { |sum, side| sum + side }
  end
end

class Rectangle
  # Your code here
  include Perimeter

  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  # Your code here
  include Perimeter

  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end
