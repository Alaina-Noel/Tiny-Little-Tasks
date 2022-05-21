class Courses_at_School

  include Comparable

CLASSES_NAMES = {"Geometry"=> 1, "Algebra"=> 2, "PreCalculus"=>3, "Calculus"=>4}
CLASSES_TIMES = {"Geometry"=> 9, "Algebra"=> 8, "PreCalculus"=>8, "Calculus"=>1}

attr_reader :name_of_class

def initialize(name_of_class,time)
  @name_of_class = name_of_class
  @time = time
end

def <=>(other_name_of_class)
  if CLASSES_NAMES[name_of_class] < CLASSES_NAMES[other_name_of_class]
    -1
  elsif CLASSES_NAMES[name_of_class] > CLASSES_NAMES[other_name_of_class]
    1
  else
    0
  end
end

end

geo = Courses_at_School.new("Geometry", 1)
alg = Courses_at_School.new("Algebra", 2)
precalc = Courses_at_School.new("PreCalculus", 3)
calc = Courses_at_School.new("Calculus", 4)

puts geo == alg
