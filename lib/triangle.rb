require 'pry'

class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(one, two, three)
    @side_one = one
    @side_two = two
    @side_three = three
  end

  def kind
    if @side_one <= 0 || @side_two <= 0 || @side_three <= 0 
      raise TriangleError
    elsif
     @side_one == @side_two && @side_one == @side_three
      :equilateral
    elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
      :isosceles
    elsif @side_one != @side_two && @side_one != @side_three && @side_two != @side_three
      :scalene
    else
    end
  end

end

class TriangleError < StandardError
end
