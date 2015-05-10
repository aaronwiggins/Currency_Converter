class Converter
  attr_reader :conversion_rates
  def initialize(conversion_rates)
    @conversion_rates = conversion_rates
  end

#First checks if the currency codes trying to be converted exist in
#the currency class, then checks the conversion class. If it doesn't,
#an error is displayed.
#Then checks if the currency codes are the same. If they are, it returns
#a new currency object with the same amount bc no converion is needed.
#If different codes, it will convert from the first currnecy amount and code
#to the equivalent amount in the new code
  def convert(currency, code)
     if !conversion_rates.include?(code) ||
       !conversion_rates.include?(currency.name)
      raise DifferentCurrencyCodeError,
      "Currency doesn't exist (all your base are belong to us)"
    elsif currency.name == code
      Currency.new(code, currency.amount)
    else
      Currency.new(code, currency.amount * conversion_rates[code] /
      conversion_rates[currency.name])
    end
  end
end

class DifferentCurrencyCodeError < StandardError
end
