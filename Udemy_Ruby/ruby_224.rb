module Square
  def self.area(side)
    side * side
  end
end

module Rectangle
  def self.area(length, width)
    length * width
  end
end

module Circle
  PI = 3.14159265358979
  def self.area_decimal(radius)
    radius * radius * PI
  end

  def self.area_pi(radius)
    "#{radius * radius}Pi"
  end
end

p Square.area(4)
p Rectangle.area(6,2)
p Circle.area_decimal(10)
p Circle.area_pi(10)
