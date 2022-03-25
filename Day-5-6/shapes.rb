PI = 3.14
class Shape
  def perimeter
    '''Calculates Perimeter'''
    raise NotImplementedError
  end

  def area
    '''Calculates Area'''
    raise NotImplementedError
  end

  def description
    '''Description of Shape'''
    'Shape'
  end

  def compare_area(o)
    ''"Compares Area of Shapes

        Args:
            o (Shape): Other Shape Object

        Returns:
            str: Comparison
        "''
    if area > o.area
      "Area of #{description}(1) is Greater than #{o.description}(2)"

    elsif area < o.area
      "Area of #{o.description}(2) is Greater than #{description}(1)"
    else
      "Area's are Equal"
    end
  end

  def compare_perimeter(o)
    ''"Compares Perimeter of Shapes

        Args:
            o (Shape): Other Shape Object

        Returns:
            str: Comparison
        "''
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
    '''Constructor'''
    @radius = radius
  end

  def perimeter
    '''Calculates the Perimeter of Shape'''
    2 * PI * @radius
  end

  def area
    '''Calculates the Area of Shape'''
    PI * @radius**2
  end

  def description
    '''Description'''
    'Circle'
  end
end

class Square < Shape
  def initialize(side)
    '''Constructor'''
    @side = side
  end

  def perimeter
    '''Calculates the Perimeter of Shape'''
    4 * @side
  end

  def area
    '''Calculates the Area of Shape'''
    @side**2
  end

  def description
    '''Description'''
    'Square'
  end
end

class Rectangle < Shape
  def initialize(length, breadth)
    '''Constructor'''

    @length = length
    @breadth = breadth
  end

  def perimeter
    '''Calculates the Perimeter of Shape'''
    2 * (@length + @breadth)
  end

  def area
    '''Calculates the Area of Shape'''
    @length * @breadth
  end

  def description
    '''Description'''
    'Rectangle'
  end
end

class Triangle < Shape
  def initialize(a, b, c)
    '''Constructor'''
    @a = a
    @b = b
    @c = c
  end

  def perimeter
    '''Calculates the Perimeter of Shape'''
    @a + @b + @c
  end

  def area
    '''Calculates the Area of Shape'''
    s = perimeter / 2
    sqrt(s * (s - @a) * (s - @b) * (s - @c))
  end

  def description
    '''Description'''
    'Triangle'
  end
end

class Pentagon < Shape
  def initialize(side)
    '''Constructor'''

    @side = side
  end

  def perimeter
    '''Calculates the Perimeter of Shape'''
    5 * @side
  end

  def area
    '''Calculates the Area of Shape'''
    (1 / 4) * Math.sqrt(5 * (5 + 2 * Math.sqrt(5))) * (@side**2)
  end

  def description
    '''Description'''
    'Pentagon'
  end
end

class Hexagon < Shape
  def initialize(side)
    '''Constructor'''

    @side = side
  end

  def perimeter
    '''Calculates the Perimeter of Shape'''
    6 * @side
  end

  def area
    '''Calculates the Area of Shape'''
    ((3 * Math.sqrt(3)) / 2) * (@side**2)
  end

  def description
    '''Description'''
    'Hexagon'
  end
end

class Heptagon < Shape
  def initialize(side)
    '''Constructor'''
    @side = side
  end

  def perimeter
    '''Calculates the Perimeter of Shape'''
    7 * @side
  end

  def area
    '''Calculates the Area of Shape'''
    ((7 / 4) * (@side**2)) * Math.atan(PI / 4)
  end

  def description
    '''Description'''
    'Heptagon'
  end
end

class Octagon < Shape
  def initialize(side)
    '''Constructor'''
    @side = side
  end

  def perimeter
    '''Calculates the Perimeter of Shape'''
    8 * @side
  end

  def area
    '''Calculates the Area of Shape'''
    2 * (1 + Math.sqrt(2)) * (@side**2)
  end

  def description
    '''Description'''
    'Octagon'
  end
end

puts Rectangle.new(5, 5).compare_area(Circle.new(6))
puts Square.new(5).compare_area(Rectangle.new(6, 6))
puts Rectangle.new(5, 5).compare_perimeter(Square.new(5))
