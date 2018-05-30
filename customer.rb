class Customer

  attr_reader(:name, :wallet)
  def initialize(name, wallet)

    @name = name
    @wallet = wallet

  end

  def spends(drink)

    @wallet -= drink.returns_price() if @wallet >= drink.returns_price()


  end

end
