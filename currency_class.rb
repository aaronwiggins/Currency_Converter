# One of those classes will represent an amount of currency
# (a real-world thing you can point to),
# United States Dollars
class Currency #name == currency code
  attr_reader :name, :amount
  def initialize(name, amount=1)
    @name = name
    @amount = amount
  end

  #will check if the two currency objects are equal in amount and name
  def ==(other)
    @name == other.name && @amount == other.amount
  end

  #will add the currency objects together if they have the same name
  def +(other)
    if @name == other.name
      Currency.new(@name, @amount + other.amount)
    else
      raise DifferentCurrencyCodeError, "not the same currency code"
      # puts "not the same currency code"
    end
  end

  def -(other)
    if @name == other.name
      Currency.new(@name, @amount - other.amount)
    else
      raise DifferentCurrencyCodeError, "not the same currency code"
      # puts "not the same currency code"
    end
  end
end

class DifferentCurrencyCodeError < StandardError
end
