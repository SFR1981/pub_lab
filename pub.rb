class Pub

attr_reader(:name, :till, :drinks, :stock)

  def initialize(name, till, drinks)

    @name = name
    @till = till
    @drinks = drinks
    @stock = {}
  end

  # @stock = {
  #   @drink1 => 23,
  #   @drink2 =>10
  # }
  #
  # total_value = 0
  # for drink in @stock.keys()
  #   total_value += drink.price * @stock[drink]
  # end

  def add_drink(drink)

    @drinks << drink

  end

  def sells_drink(drink)

    @drinks.delete(drink)

  end

  def sale(drink)
    @till += drink.price()

  end

  def serve?(age)
      return true if age >= 18
      return false if age < 18

  end

   def drunk?(drunkeness)
      return (drunkeness > 20.0)

   end


end
