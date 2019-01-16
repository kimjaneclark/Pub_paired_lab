class Customer

  attr_accessor :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

def buy_drink(drink)
  customer_drink_price = drink.price
  @wallet -= customer_drink_price
end



end
