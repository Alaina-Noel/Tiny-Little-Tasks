prices = [2.99, 25.00, 9.99]

def total(array)
    amount = 0
    i = 0
    while i < array.length
        amount += array[i]
        i += 1
    end
    formatted_price = format("%.2f", amount)
    formatted_price
end

p total(prices)
