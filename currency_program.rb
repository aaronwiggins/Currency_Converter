require "./currency_class.rb"
require "./converter_class.rb"

currency_one = Currency.new("USD", 50.00,)
currency_two = Currency.new("USD", 50.00)
currency_three = Currency.new("$ 7.00") #need to make a hash of currency symbols(keys) and codes(values)

# p currency_one.amount
# p currency_two.amount
# p currency_one == currency_two
# p currency_check = currency_one + currency_two
# p currency_one - currency_two
# p currency_one * currency_two
p currency_three
p currency_three.name
p currency_three + currency_one
