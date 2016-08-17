require 'pry'
require 'prime'
# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def largest_prime(num)
  prime_factor_ary = []

  Prime.each(num) do |prime|
    if num % prime == 0
      prime_factor_ary << prime
      binding.pry
    end
  end
  prime_factor_ary
end

# puts largest_prime(13195) # 29
puts largest_prime(600851475143)