

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
    if check_age(customer) && check_drunkenness(customer)
      customer_drink_price = drink.price
      @till += customer_drink_price
      customer.buy_drink(drink)
    else
      return "no way"
    end
  end


  def check_age(customer)
    if customer.age > 17
      return true
    else
      return false
    end
  end

def check_drunkenness(customer)
  if customer.drunkenness < 15
    return true
  else
    return false
  end
end




end
