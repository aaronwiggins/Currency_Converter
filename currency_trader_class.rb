class Trader
  attr_reader :initial_currency, :initial_rate, :second_rate
  def initialize(initial_currency, initial_rate, second_rate)
    @initial_currency = initial_currency
    @initial_rate = initial_rate
    @second_rate = second_rate
  end


#take initial_currency(in USD), convert it to EUR,
#then converit it back to USD (assume time has passed
#and the conversion rates have changed)

  #does a loop in other_currency_to_usd for each Key in the conversion_rates class Converter
  #works well but returns the initial_rate hash at the end for some reason
  def currency_conversions
    initial_rate.conversion_rates.each_key do |x|
    puts other_currency_to_usd(x)
    end
  end

  def other_currency_to_usd(other_currency)
    initial = initial_currency.amount * initial_rate.conversion_rates[other_currency] /
    initial_rate.conversion_rates[initial_currency.name]
    final = initial * second_rate.conversion_rates[initial_currency.name] /
    second_rate.conversion_rates[other_currency]

    puts "You started with #{initial_currency.name} #{initial_currency.amount}"
    puts "Initial change is #{other_currency} #{initial}"
    puts "The change back gives you #{initial_currency.name} #{final.round(2)}"
  end
end
