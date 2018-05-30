class Customer

  attr_reader(:name, :wallet, :age, :drunkeness)

  def initialize(name, wallet, age)

    @name = name
    @wallet = wallet
    @age = age
    @drunkeness = 0.0

  end

  def spends(drink)

    @wallet -= drink.returns_price() if @wallet >= drink.returns_price()


  end

  def buys(drink, pub)
    if pub.serve?(@age)
      spends(drink)
      pub.sale(drink)
      pub.sells_drink(drink)
      @drunkeness += drink.alcohol_level()

    end


  end



end
