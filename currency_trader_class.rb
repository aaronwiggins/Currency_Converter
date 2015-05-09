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
  puts "initial changes is : "# + "#{usd_to_eur_and_back}"
  puts "the change back gives you: "
  end

  def usd_to_eur_and_back
    usd_to_eur = initial_currency.amount * initial_rate.conversion_rates[:EUR] /
    initial_rate.conversion_rates[initial_currency.name]
    eur_back_to_usd = usd_to_eur * second_rate.conversion_rates[initial_currency.name] /
    second_rate.conversion_rates[:EUR]
  end

  def usd_to_jpy_and_back
    usd_to_jpy = initial_currency.amount * initial_rate.conversion_rates[:JPY] /
    initial_rate.conversion_rates[initial_currency.name]
    jpy_back_to_usd = usd_to_jpy * second_rate.conversion_rates[initial_currency.name] /
    second_rate.conversion_rates[:JPY]
    # p usd_to_jpy
  end


end
