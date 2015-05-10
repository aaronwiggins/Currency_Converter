class Trader
  attr_reader :initial_currency, :initial_rate, :second_rate
  def initialize(initial_currency, initial_rate, second_rate)
    @initial_currency = initial_currency
    @initial_rate = initial_rate
    @second_rate = second_rate
  end


  # def new_second_rate
  #   @second_rate.each_value do |k|
  #   @second_rate[k] *= 0.90
  #   end
  # end
#take initial_currency(in USD), convert it to EUR,
#then converit it back to USD (assume time has passed
#and the conversion rates have changed)

  # need to work with varying currency codes
  # def usd_to_eur_and_back
  #   usd_to_eur = initial_currency.amount * initial_rate.conversion_rates[:EUR] /
  #   initial_rate.conversion_rates[initial_currency.name]
  #   eur_back_to_usd = usd_to_eur * second_rate.conversion_rates[initial_currency.name] /
  #   second_rate.conversion_rates[:EUR]
  # end

  # def usd_to_jpy_and_back
  #   usd_to_jpy = initial_currency.amount * initial_rate.conversion_rates[:JPY] /
  #   initial_rate.conversion_rates[initial_currency.name]
  #   jpy_back_to_usd = usd_to_jpy * second_rate.conversion_rates[initial_currency.name] /
  #   second_rate.conversion_rates[:JPY]
  # end

  # def usd_to_other_currency(other_currency)
  #   initial_currency.amount * initial_rate.conversion_rates[other_currency] /
  #   initial_rate.conversion_rates[initial_currency.name]
  # end


  def other_currency_to_usd(other_currency)
    initial = initial_currency.amount * initial_rate.conversion_rates[other_currency] /
    initial_rate.conversion_rates[initial_currency.name]
    final = initial * second_rate.conversion_rates[initial_currency.name] /
    second_rate.conversion_rates[other_currency]

    puts "You started with: " + "#{initial_currency.name} " +
    "#{initial_currency.amount}"
    puts "initial changes is to " + "#{other_currency}" " is " + "#{initial}"
    puts "the change back gives you: " + "#{final}"
  end
end
