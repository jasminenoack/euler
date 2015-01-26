def prime?(num)
  return false if num < 2
  return true if num == 2

  max_factor = (num**(0.5)).ceil
  (2..(max_factor)).none? { |factor| (num % factor).zero? }
end

def nth_prime(count)
  n = 1

  until count == 0
    n += 1

    count -= 1 if prime?(n)
  end

  n
end

p nth_prime(10_001)
