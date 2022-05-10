array = [17, 31, 12, 38, 10]
result = array.clone

array.each do |num|
  checker = num - 1
  while checker > 1
    if num % checker == 0
      result.delete(num)
      break
    end
    checker -= 1
  end
end

p result
