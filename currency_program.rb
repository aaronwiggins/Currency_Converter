require "./currency_class.rb"
require "./converter_class.rb"
require "./currency_trader_class.rb"

currency_one = Currency.new(:USD, 100.00)
currency_two = Currency.new(:EUR, 1.00)
currency_three = Currency.new(:JPY, 1.00)
currency_four = Currency.new("$ 7.00")
currency_conversions = Converter.new({USD: 1.0, EUR: 0.74, JPY: 120.0})
trade = Trader.new(currency_one, currency_conversions,
currency_conversions)



#TESTING BELOW
# p currency_one.amount
# p currency_two.amount
# p currency_one == currency_two
# p currency_check = currency_one + currency_two
# p currency_one - currency_two
# p currency_one * currency_two
# p currency_three
# p currency_three.name
# p currency_three + currency_one
# p usd_to_euro
# p currency_one
# p currency_one.class
# p currency_one.name.class
# p currency_conversions.convert(currency_one, :USD)
# p currency_conversions.convert(currency_one, :EUR)
# p currency_conversions.convert(currency_three, :USD)
# p currency_conversions.convert(currency_two, :USD)
# p trade.initial_rate.conversion_rates[:EUR]
# p trade.usd_to_eur_and_back
# p trade.usd_to_other_currency(:JPY)
p trade.other_currency_to_usd(:JPY)
