number = 20 * 19

number += 20 * 19 until (2..20).all? { |factor| number % factor == 0 }

puts number
