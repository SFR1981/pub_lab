class Drink

  attr_reader(:name, :price)

  def initialize(name, price)
    @name = name
    @price = price
  end


  def returns_price

    return @price

  end
end
