require("minitest/autorun")
require("minitest/rg")
require_relative("../Drink")
require_relative("../Customer")
require_relative("../Pub")

class TestCustomer < MiniTest::Test

  def setup
    @customer1 = Customer.new("Neil", 30)
    @customer2 = Customer.new("Kim", 50)

    @drink1 = Drink.new("beer", 3)
    @drink2 = Drink.new("beer", 3)
    @drink3 = Drink.new("beer", 3)
    @drink4 = Drink.new("wine", 4)
    @drink5 = Drink.new("wine", 4)
    @drink6 = Drink.new("wine", 4)
    @drink7 = Drink.new("Gin", 5)
    @drink8 = Drink.new("Gin", 5)
    @drink9 = Drink.new("Gin", 5)

    @pub = Pub.new("Clansman", 500,[@drink1, @drink2, @drink3, @drink4, @drink5, @drink6, @drink7, @drink8, @drink9])
  end

  def test_customer_name
    assert_equal("Neil", @customer1.name)
  end

  def test_customer_wallet
    assert_equal(50, @customer2.wallet)
  end

  def test_wallet_decrease
    @customer2.buy_drink(@drink4)
    assert_equal(46, @customer2.wallet)

  end

end
