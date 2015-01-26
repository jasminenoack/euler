def fibonacci(max)
  fibs = [0, 1]

  fibs << fibs[-1] + fibs[-2] until fibs[-1] > max
  fibs.take(fibs.length - 1)
end

p fibonacci(4_000_000).select(&:even?).inject(:+)
