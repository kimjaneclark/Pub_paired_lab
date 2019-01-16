require("minitest/autorun")
require("minitest/rg")
require_relative("../Drink")
require_relative("../Customer")
require_relative("../Pub")

class TestPub < MiniTest::Test

  def setup
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
    @customer1 = Customer.new("Neil", 30, 45, 0)
    @customer2 = Customer.new("Kim", 50, 41, 0)
    @customer3 = Customer.new("Ian", 10, 16, 20)

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

  def test_refuse_drink
    @pub.sell_drink(@drink4, @customer3)
    assert_equal(500, @pub.till)
    assert_equal(10, @customer3.wallet)
    assert_equal("no way", @pub.sell_drink(@drink4, @customer3))
  end

  def test_check_age
    @pub.check_age(@customer1)
    assert_equal(true, @pub.check_age(@customer1))
  end

  def test_check_age_false
    @pub.check_age(@customer3)
    assert_equal(false, @pub.check_age(@customer3))
  end

  def test_check_drunkenness
    @pub.check_drunkenness(@customer2)
    assert_equal(true, @pub.check_drunkenness(@customer2))
  end

  def test_check_drunkenness_false
    @pub.check_drunkenness(@customer3)
    assert_equal(false, @pub.check_drunkenness(@customer3))
  end

end
