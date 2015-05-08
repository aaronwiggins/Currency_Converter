require "./currency_class.rb"
require "./converter_class.rb"

currency_one = Currency.new("USD", 50.00,)
currency_two = Currency.new("USD", 50.00)
currency_three = Currency.new("$ 7.00")
usd_to_euro = Converter.new({USD: 1.0, EUR: 0.74})
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
#
# p currency_one.class
# p currency_one.name.class
p currency_one
p usd_to_euro.convert(currency_one, :EUR)

#(Currency.new(1, :USD), :USD)
# usd_to_euro.convert
