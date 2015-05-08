class Converter
  attr_reader :conversion_rates
  def initialize(conversion_rates)
    @conversion_rates = conversion_rates
  end

  def convert(currency, code)
    if currency.name == code
      Currency.new(code, currency.amount)
    else
      Currency.new(code, currency.amount * conversion_rates[code])
    end

  end
end
