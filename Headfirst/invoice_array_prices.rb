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

def refund(array)
    balance = 0
    i = 0
    while i < array.length
        balance -= array[i]
        i += 1
    end
    formatted_balance = format("%.2f", balance)
    formatted_balance
end

def savings_when_reduced_by_third(array)
    savings_total = 0
    i = 0
    while i < array.length
        b = array[i]/3
        savings_total += b
        i += 1
    end
    formatted_savings = format("%.2f", savings_total)
    formatted_savings
end

p total(prices)
p refund(prices)
p savings_when_reduced_by_third(prices)
