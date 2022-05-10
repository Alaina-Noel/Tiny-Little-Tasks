array = [17, 31, 12, 38, 10]

array.each do |num|
  p num
  checker = num - 1
    while checker > 1
      p "#{num} #{checker} #{array}"
      if num % checker == 0
        puts "#{num} & #{checker}"
        puts "#{num % checker}"
        array.delete(num)
        p array
        break
      end
      checker -= 12
    end

end

p array
