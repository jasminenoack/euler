def prime?(num)
  return false if num < 2
  return true if num == 2

  max_factor = (num**(0.5)).ceil
  (2..(max_factor)).none? { |factor| (num % factor).zero? }
end

def sum_primes_under(max)
  total = 0
  n = 2

  until n == max
    total += n if prime?(n)
    n += 1
  end

  total
end

p sum_primes_under(2_000_000)
