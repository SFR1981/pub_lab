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

    spends(drink)
    pub.sale(drink)
    pub.sells_drink(drink)


  end

end
