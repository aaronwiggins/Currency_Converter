# One of those classes will represent an amount of currency
# (a real-world thing you can point to),
# United States Dollars
class Currency #name == currency code
  attr_reader :name, :amount
  def initialize(name, amount=nil)
    @name = name
    @amount = amount

#a hash of currency symbols & codes
    currency_codes = {
      "$" => "USD",
      "€" => "EUR"
    }

#if "$ 7.00" is given as a currency. There is not an argurment to represent amount
#It will look in the first posisiton in the string for the symbol,
#and change it to the corresponding code.
#It then takes the remaining posisions in the string, converts it to float,
#and saves it as the second argument (armount).
    if amount == nil
      @name = currency_codes[name[0]]
      @amount = name[1..-1].to_f
    end

  end

  #will check if the two currency objects are equal in amount and name
  def ==(other)
    @name == other.name && @amount == other.amount
  end

  #will add the currency objects together if they have the same name
  # puts "not the same currency code" if the currency codes (names) are not the same
  def +(other)
    if @name == other.name
      Currency.new(@name, @amount + other.amount)
    else
      raise DifferentCurrencyCodeError, "not the same currency code"
    end
  end

  #will subtract the amount from to currency objects if they have the same code (name)
  # puts "not the same currency code" if the currency codes (names) are not the same
  def -(other)
    if @name == other.name
      Currency.new(@name, @amount - other.amount)
    else
      raise DifferentCurrencyCodeError, "not the same currency code"
    end
  end

  def *(other)
    if @name == other.name
      Currency.new(@name, @amount * other.amount)
    else
      raise DifferentCurrencyCodeError, "not the same currency code"
    end
  end
end

class DifferentCurrencyCodeError < StandardError
end
