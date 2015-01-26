def prime?(num)
  (2..(num**(0.5)).to_i).none? { |x| num % x == 0 }
end

def largest_prime_factor(num)
  return 1 if num == 1
  n = 2

  until num == 1
    if prime?(n) && num % n == 0
      largest_factor = n
      num /= n
    end
    n += 1
  end

  largest_factor
end

p largest_prime_factor(600_851_475_143)
