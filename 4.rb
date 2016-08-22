# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.
require 'pry'

def problem4(a, b)
  until a*b == (a*b).to_s.split("").reverse.join.to_i
    # start with a, mult by b
  end
  binding.pry
  a*b
end

puts problem4(99, 99)