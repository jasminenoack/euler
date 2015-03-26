def factorial(num)
  return 1 if num==0
  num * factorial(num-1)
end

def num_to_array(num)
nums=num.to_s.split("")
nums.delete("0")
nums.map{|x| x.to_i}
end

f = factorial(100)
nums=num_to_array(f)
puts nums.inject(:+)
