class Customer

  attr_reader(:name, :wallet, :age)
  def initialize(name, wallet, age)

    @name = name
    @wallet = wallet
    @age = age

  end

  def spends(drink)

    @wallet -= drink.returns_price() if @wallet >= drink.returns_price()


  end

  def buys(drink, pub)
    if pub.serve?(@age)
      spends(drink)
      pub.sale(drink)
      pub.sells_drink(drink)
    end


  end

end
#
# def serve?(customer)
#   return true if customer.age() >= 18
#   return false if customer.age() < 18
#
# end
