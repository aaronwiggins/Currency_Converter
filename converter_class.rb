class Converter
  attr_reader :conversion_rates
  def initialize(conversion_rates)
    @conversion_rates = conversion_rates
  end

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
