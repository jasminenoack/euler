def sum_of_squares(num)
  (1..num).map { |x| x**2 }.inject(:+)
end

def square_of_sums(num)
  (1..num).inject(:+)**2
end

p square_of_sums(100) - sum_of_squares(100)
