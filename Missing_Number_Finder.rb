def missing_number(array)
  true_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  array.each do |element|
    true_array.delete(element) if true_array.include?(element)
    end
  true_array
end

q = [1, 2, 8, 3, 4, 7, 9, 10]
p missing_number(q)
