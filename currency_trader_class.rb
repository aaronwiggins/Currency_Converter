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
  def money_trader
  puts "You started with: " + "#{initial_currency.name} " +
  "#{initial_currency.amount}"
  puts "initial changes is : " + "#{usd_to_other_currency}"
  puts "the change back gives you: " + "#{other_currency_to_usd}"
  end


###Make one method for usd to a different code.
###Then another for a currency code back to usd
###make money trader have 3 variables for each promp
###Do a < > to see which convertion ends with more USD in the end

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
    puts "initial changes is : " + "#{initial}"
    puts "the change back gives you: " + "#{final}"

  end
end
