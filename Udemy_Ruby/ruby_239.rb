class Array

  def sum
    total = 0
    self.each {|e| total += e if e.is_a?(Numeric)}
    total
  end

end

q = [1, 2, 3,"Hi"]
p q.sum
puts q.class.methods.sort
