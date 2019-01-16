require("minitest/autorun")
require("minitest/rg")
require_relative("../Drink")
require_relative("../Customer")
require_relative("../Pub")

class TestDrink < MiniTest::Test

  def setup
    @drink = Drink.new("Champagne", 10, 2)
  end

  def test_drink_name
    assert_equal("Champagne", @drink.drink_name)
  end

  def test_drink_price
    assert_equal(10, @drink.price)
  end

  def test_alcohol_level
    assert_equal(2, @drink.alcohol_level)
  end
  























end
