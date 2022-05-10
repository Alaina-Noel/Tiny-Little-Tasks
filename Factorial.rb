def factorial(integer)
  array = []
  while integer > 1
    array << integer
    integer -= 1
  end
  array.reduce(:*)
end

p factorial(3)
