number = File.read('test_8.txt').gsub('\n', '')

number_sets = []

(0...number.length - 12).each { |i| number_sets << number[i..i + 12] }

number_sets = number_sets.map { |numbers| numbers.split('').map(&:to_i) }

number_sets.reject! { |numbers| numbers.include?('0') }
number_sets.reject! { |numbers| numbers.include?('1') }
number_sets.reject! { |numbers| numbers.include?('2') }
number_sets.reject! { |numbers| numbers.include?('3') }

highest_product = 0
high_set = nil

number_sets.each do |set|
  total = set.inject(:*)
  highest_product = total if total > highest_product
  high_set = set if total == highest_product
end

p highest_product
p high_set
