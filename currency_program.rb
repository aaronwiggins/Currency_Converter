require "./currency_class.rb"
require "./converter_class.rb"

currency_one = Currency.new("USD", 50.00)
currency_two = Currency.new("USD", 30.00)
p currency_one.amount
p currency_two.amount
p currency_one == currency_two
p currency_one + currency_two
p currency_one - currency_two
p currency_one * currency_two
