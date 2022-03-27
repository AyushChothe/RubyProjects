PI = 3.14
class Shape
  def perimeter
    raise NotImplementedError
  end

  def area
    raise NotImplementedError
  end

  def description
    'Shape'
  end

  def compare_area(o)
    if area > o.area
      "Area of #{description}(1) is Greater than #{o.description}(2)"
    elsif area < o.area
      "Area of #{o.description}(2) is Greater than #{description}(1)"
    else
      "Area's are Equal"
    end
  end

  def compare_perimeter(o)
    if perimeter > o.perimeter
      "Perimeter of #{description}(1) is Greater than #{o.description}(2)"
    elsif perimeter < o.perimeter
      "Perimeter of #{o.description}(2) is Greater than #{description}(1)"
    else
      "Perimeter's are Equal"
    end
  end
end

class Circle < Shape
  def initialize(radius)
    @radius = radius
  end

  def perimeter
    2 * PI * @radius
  end

  def area
    PI * @radius**2
  end

  def description
    'Circle'
  end
end

class Square < Shape
  def initialize(side)
    @side = side
  end

  def perimeter
    4 * @side
  end

  def area
    @side**2
  end

  def description
    'Square'
  end
end

class Rectangle < Shape
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end

  def area
    @length * @breadth
  end

  def description
    'Rectangle'
  end
end

class Triangle < Shape
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def perimeter
    @a + @b + @c
  end

  def area
    s = perimeter / 2
    sqrt(s * (s - @a) * (s - @b) * (s - @c))
  end

  def description
    'Triangle'
  end
end

class Pentagon < Shape
  def initialize(side)
    @side = side
  end

  def perimeter
    5 * @side
  end

  def area
    (1 / 4) * Math.sqrt(5 * (5 + 2 * Math.sqrt(5))) * (@side**2)
  end

  def description
    'Pentagon'
  end
end

class Hexagon < Shape
  def initialize(side)
    @side = side
  end

  def perimeter
    6 * @side
  end

  def area
    ((3 * Math.sqrt(3)) / 2) * (@side**2)
  end

  def description
    'Hexagon'
  end
end

class Heptagon < Shape
  def initialize(side)
    @side = side
  end

  def perimeter
    7 * @side
  end

  def area
    ((7 / 4) * (@side**2)) * Math.atan(PI / 4)
  end

  def description
    'Heptagon'
  end
end

class Octagon < Shape
  def initialize(side)
    @side = side
  end

  def perimeter
    8 * @side
  end

  def area
    2 * (1 + Math.sqrt(2)) * (@side**2)
  end

  def description
    'Octagon'
  end
end

puts Rectangle.new(5, 5).compare_area(Circle.new(6))
puts Square.new(5).compare_area(Rectangle.new(6, 6))
puts Rectangle.new(5, 5).compare_perimeter(Square.new(5))
