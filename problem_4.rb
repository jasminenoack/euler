products = []

(900..999).each do |number1|
  (900..999).each do |number2|
    products << number1 * number2
  end
end

p products.uniq.select { |num| num.to_s == num.to_s.reverse }.sort.last
