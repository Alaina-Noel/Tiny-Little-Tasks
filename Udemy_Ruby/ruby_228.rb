module Purchaseable
  def purchase(item)
    "#{item} has been purchased."
  end
end

class Bookstore
  include Purchaseable
end

class Supermarket
  include Purchaseable
end

class CornerMart < Supermarket
end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase("Educated")

target = Supermarket.new
p target.purchase("Poptarts")

quickstop = CornerMart.new
p quickstop.purchase("Doritos")
