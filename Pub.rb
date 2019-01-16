class Pub

  attr_accessor :pub_name, :till, :drinks

  def initialize(pub_name, till, drinks)

    @pub_name = pub_name
    @till = till
    @drinks = drinks

  end

  def drinks_count
    return @drinks.count
  end

  def sell_drink(drink, customer)
      customer_drink_price = drink.price
      @till += customer_drink_price
      customer.buy_drink(drink)
  end

end
