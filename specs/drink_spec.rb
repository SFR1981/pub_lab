require("minitest/autorun")
require_relative("../drink.rb")

class DrinkTest < MiniTest::Test

def setup
  @drink = Drink.new("WKD", 1.20)
end

def test_drink_has_name
  assert_equal("WKD", @drink.name())
end

def test_drink_has_price
  assert_equal(1.20, @drink.price())
end
end
