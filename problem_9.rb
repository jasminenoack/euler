triples = []

(1..665).each do |x|
  (x + 1..665).each do |y|
    z = (x**2 + y**2)**(0.5)
    next unless z.to_i == z
    triples << [x, y, z.to_i]
  end
end

triple = triples.select! { |nums| nums.inject(:+) == 1000 }[0]

p triple.inject(:*)
