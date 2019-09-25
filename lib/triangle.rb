class Triangle
  # write code here
  
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def valid 
    (a > 0 && b > 0 && c > 0) && (a + b > c && a + c > b && b + c > a)
  end 

  def kind
    if valid
      true 
    else 
      raise TriangleError 
    end 
    if a == b && b == c && a == c
      :equilateral
    elsif a != b && b != c && a != c
      :scalene 
    else 
      :isosceles
    end 
  end


  class TriangleError < StandardError
    # triangle error code
    "You're a triangle."
  end


end
