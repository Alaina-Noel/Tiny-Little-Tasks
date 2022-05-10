def first_fibb_numbers(int)
  i = 0
  j = 0
  k = 1
  array = []
  array << j
  while i <= int
    p array
    array << k
    i += 1
    p "This is k #{k}"
    k += array[i]
    p "This is k #{k}"
  end
  array
end


p first_fibb_numbers(6)
