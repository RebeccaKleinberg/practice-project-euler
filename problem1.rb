require 'pry'
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_mults(num)
  ary = []
  num.times do |num|
    if num % 3 == 0 || num % 5 == 0
      ary << num
    end
    num -= 1
  end
    ary.inject(:+)
end

puts sum_of_mults(10) # 23
puts sum_of_mults(1000)