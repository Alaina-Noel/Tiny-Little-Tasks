def first_fibb_numbers(int)
  i, q = 0 , 1
  array = [0, 1]
    while q <= int - 2
      k = array[i]
      j = array[q]
      l = k + j
      array << l
      i += 1
      q += 1
    end
  array
end


p first_fibb_numbers(10)
