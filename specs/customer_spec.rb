require("minitest/autorun")
require_relative("../customer.rb")
require_relative("../pub.rb")
require_relative("../drink.rb")

class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Helen", 100.99)
    @drink1 = Drink.new("WKD", 1.20)
    @drink2 = Drink.new("stella", 5.80)
    @drink3 = Drink.new("bulmers", 3.70)
    @pub = Pub.new("chanter", 500.99, [@drink1, @drink3, @drink2])
  end


  def test_customer_has_name

    assert_equal("Helen", @customer1.name())

  end

  def test_customer_has_wallet
    assert_equal(100.99, @customer1.wallet())
  end


  def test_spends
    @customer1.spends(@drink2)
    money = @customer1.wallet()
    assert_equal(95.19, money)


  end

  def test_customer_buys_a_drink

    @customer1.buys(@drink2, @pub)
    assert_equal(95.19, @customer1.wallet())
    assert_equal(506.79, @pub.till())


  end

  

end
