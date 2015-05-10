require "./currency_class.rb"
require "./converter_class.rb"
require "./currency_trader_class.rb"

currency_one = Currency.new(:USD, 100.00)
currency_two = Currency.new(:EUR, 1.00)
currency_three = Currency.new(:JPY, 1.00)
currency_four = Currency.new("$ 7.00")
conversion_one = Converter.new({USD: 1.0, EUR: 0.74, JPY: 120.0})
conversion_two = Converter.new({USD: 1.0, EUR: 0.88, JPY: 118.0})
trade = Trader.new(currency_one, conversion_one,
conversion_two)
