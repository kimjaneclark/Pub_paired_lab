require("minitest/autorun")
require("minitest/rg")
require_relative("../Drink")
require_relative("../Customer")
require_relative("../Pub")

class TestPub < MiniTest::Test

  def setup
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
    @customer1 = Customer.new("Neil", 30)
    @customer2 = Customer.new("Kim", 50)

  end

  def test_pub_name
    assert_equal("Clansman", @pub.pub_name)
  end

  def test_check_till
    assert_equal(500, @pub.till)
  end

  def test_drinks_stock
    assert_equal(9, @pub.drinks_count)
  end

  def test_sell_drink
    @pub.sell_drink(@drink4, @customer2)
    assert_equal(504, @pub.till)
    assert_equal(46, @customer2.wallet)
  end

end
