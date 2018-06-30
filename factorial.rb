# Factorial
# Function that calculates factorial of a number using recursion
# Formula used : factorial(n) = n* factorial(n-1)
# Exits out of recursion using the fact that
# factorial(0) = 1
#
# param : number - number to calculate factorial for, cannot be negative
def factorial(number)
  raise 'Only postive numbers allowed' unless number >= 0
  if number == 0 then 1 else number * factorial(number-1) end
end

# Start of script
# Usage : ruby factorial.rb <number>

# ARGV[0] first param passed from program
puts factorial(ARGV[0].to_i)
