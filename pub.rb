class Pub

attr_reader(:name, :till, :drinks)

  def initialize(name, till, drinks)

    @name = name
    @till = till
    @drinks = drinks
  end

  def add_drink(drink)

    @drinks << drink

  end

  def sells_drink(drink)

    @drinks.delete(drink)

  end

  def sale(drink)
    @till += drink.returns_price()

  end


end
