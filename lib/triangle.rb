class Triangle
  # write code here
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if (@one > 0 && @two > 0 && @three > 0) && (((@one + @two) > @three) && ((@one + @three) > @two) && ((@two + @three) > @one))
      if @one == @two && @two == @three
        return :equilateral
      elsif @one == @two || @two == @three || @one == @three
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end


  end

  class TriangleError < StandardError
    def message
      "You're not thinking like a triangle"
    end
  end


end
