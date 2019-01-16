require("minitest/autorun")
require("minitest/rg")
require_relative("../Drink")
require_relative("../Customer")
require_relative("../Pub")

class TestCustomer < MiniTest::Test

  def setup
    @customer1 = Customer.new("Neil", 30, 45, 0)
    @customer2 = Customer.new("Kim", 50, 41, 0)

    @drink1 = Drink.new("beer", 3, 1)
    @drink2 = Drink.new("beer", 3, 1)
    @drink3 = Drink.new("beer", 3, 1)
    @drink4 = Drink.new("wine", 4, 2)
    @drink5 = Drink.new("wine", 4, 2)
    @drink6 = Drink.new("wine", 4, 2)
    @drink7 = Drink.new("Gin", 5, 3)
    @drink8 = Drink.new("Gin", 5, 3)
    @drink9 = Drink.new("Gin", 5, 3)

    @pub = Pub.new("Clansman", 500,[@drink1, @drink2, @drink3, @drink4, @drink5, @drink6, @drink7, @drink8, @drink9])
  end

  def test_customer_name
    assert_equal("Neil", @customer1.name)
  end

  def test_customer_wallet
    assert_equal(50, @customer2.wallet)
  end

  def test_customer_age
    assert_equal(45, @customer1.age)
  end

  def test_wallet_decrease
    @customer2.buy_drink(@drink4)
    assert_equal(46, @customer2.wallet)

  end

  def test_drunkenness
    assert_equal(0, @customer1.drunkenness)
  end

  def test_drunk_level
@customer1.drunk_level(@drink4, @customer1)
assert_equal(2, @customer1.drunkenness)
  end
end
