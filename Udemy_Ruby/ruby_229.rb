module Purchaseable
  def purchase(item)
    "#{item} has been purchased."
  end
end

class Bookstore
  include Purchaseable

  def purchase(seconditem)
    "You bought a copy of #{seconditem} at the bookstore."
  end
end

class Supermarket
  include Purchaseable
  def purchase(item3)
    "Thanks for visiting & buying a #{item3}!"
  end
end

class CornerMart < Supermarket
end

p Bookstore.ancestors
seven_11 = Supermarket.new

p seven_11.purchase("Doritos")
p Supermarket.ancestors
p seven_11.purchase("Pops")

p CornerMart.ancestors
