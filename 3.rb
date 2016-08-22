require 'pry'
require 'prime'
# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# Find factors first, then check if that number is prime

# def largest_prime(num)
#   prime_factor_ary = []

#   Prime.each(num/2) do |prime|
#     if num % prime == 0
#       prime_factor_ary << prime
#     end

#   end
#   prime_factor_ary.pop
# end

def largest_prime(input)

  input_float = input.to_f
  range_low = 1
  range_top = input_float / range_low

  factors = []

  loop do
    range_top = input_float / range_low

    if range_top % 1 == 0
      factors << range_low
      factors << range_top
    end

    range_low += 1

    break if range_low > range_top
  end

  prime_factors = factors.inject([]) do |memo, factor|
    if Prime.prime?(factor)
      memo << factor
    end
    memo
  end

  puts prime_factors

  prime_factors.sort.pop
end


# puts largest_prime(13195) # 29
puts largest_prime(600851475143)