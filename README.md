#Create a Currency Converter

##Description
Create two Ruby classes. One will be for storing currency values. The other will be used to hold the conversion forumula and rates.


###Objectives
After completing this assignment, you should...

* Understand how to override mathematical operators
* Understand how objects can return objects of other classes as responses to messages
* Understand how to execute Ruby code which spans multiple files
* Understand how to create your own exception classes
* Be able to initialize an object from a set of parameters
* Be able to initialize a set of objects from a complex data structure
* Be able to raise exceptions/errors as appropriate
* Be able to parse strings to isolate specific symbols

###Normal Mode
Create two Classes. One will represent an amount of currency. The other will represent a currency converter with multiple currencies.

1. Currency Class
  * Currency objects should be created with a currency code and amount
  * Should be able to tell if two currency objects have the same currency code or not
  * Can add, subtract, or multiply currency objects with the same currency code
  * Currency class should be able to take one argument with a currency symbol embedded in it, like "$1.20" or "€ 7.00", and figure out the correct currency code and amount

2. Converter Class
  * Initialized with a hash of currency codes to conversion rates
  * Should be able to take a Currency object that has one currency code and a requested currency code and return a new Currency object with the new currency code

###Hard Mode
Build a third class called CurrencyTrader. Initialize with two CurrencyConverter objects from two different points in time (each one will have different conversion rates), plus a starting Currency. Create a method in CurrencyTrader which returns the best currency investment over that span of time.

####How to run the program
Download the following:
* currency_program.rb
* currency_class.rb
* converter_class.rb
* currency_trader_class.rb

Run currency_program.rb in the terminal by typing:
  `ruby currency_program.rb`
