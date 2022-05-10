def first_fibb_numbers(int)
  i = 1
  q = 0
  array = [0, 1]
  while i <= int - 2
    k = array[i]
    j = array[q]
    l = k + j
    p array
    array << l
    i += 1
    q += 1
  end
  array
end


p first_fibb_numbers(10)
