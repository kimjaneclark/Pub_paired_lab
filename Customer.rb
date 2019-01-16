class Customer

  attr_accessor :name, :wallet, :age, :drunkenness

  def initialize(name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end

  def buy_drink(drink)
    customer_drink_price = drink.price
    @wallet -= customer_drink_price
  end

  def drunk_level(drink, customer)
    @drunkenness += drink.alcohol_level
  end


end
