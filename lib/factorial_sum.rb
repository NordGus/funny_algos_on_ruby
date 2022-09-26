def factorial_sum(number, sum = 0)
  raise ArgumentError, "number must be positive" if number < 0 # Protects against infinite recursion
  return sum if number == 0 # returns recursion result

  number.times { |n| sum += n } # makes factorial like sum

  factorial_sum((number - 1), sum + number) # starts recursion
end