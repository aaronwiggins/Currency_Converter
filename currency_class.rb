# One of those classes will represent an amount of currency
# (a real-world thing you can point to),
# United States Dollars
class Currency #name == currency code
  def initialize(name, amount=1)
    @name = name
    @amount = amount
  end

end
