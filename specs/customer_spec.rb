require("minitest/autorun")
require_relative("../customer.rb")

class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Helen", 100.99)
  end


  def test_customer_has_name

    assert_equal("Helen", @customer1.name())

  end

  def test_customer_has_wallet
    assert_equal(100.99, @customer1.wallet())
  end

end
