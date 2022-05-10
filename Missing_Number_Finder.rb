def missing_num(arr)
  full_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  leftover = full_array - arr
  leftover
end

q = [1, 2, 8, 3, 6, 4, 7, 9, 10]
p missing_num(q)
