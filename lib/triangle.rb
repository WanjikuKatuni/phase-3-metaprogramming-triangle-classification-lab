class Triangle
  # write code here

  attr_accessor :side1, side2, side3


  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if side1==side2 && side2==side3
      :equilateral
    elsif side1 != side2 && side2 !=side3 && side1 !=side3
      :scalene
    else
      :isosceles
    end

  end

  def triangle_correct
    side1+side2 > side3 && side1 + side3 && side2+side3 > side1
  end

  def positive_triangle?
    [side1, side2, side3].all?(&:positive?)
  end

  def validate_triangle
    raise TriangleError unless triangle_correct? && positive_triangle
  end

  class TriangleError < StandardError
    # traingle error code
  end


end
