# One of those classes will represent an amount of currency
# (a real-world thing you can point to),
# United States Dollars
class Currency #name == currency code
  attr_reader :name, :amount
  def initialize(name, amount=1)
    @name = name
    @amount = amount
  end

  def ==(other)
    @name == other.name && @amount == other.amount
  end
end

# check if @name && @amount == @name && @amount
