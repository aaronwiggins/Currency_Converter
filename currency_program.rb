require "./currency_class.rb"
require "./converter_class.rb"

usd_a = Currency.new("USD", 50)
usd_b = Currency.new("USD", 50)
p usd_a.amount
p usd_b.amount
p usd_a == usd_b
