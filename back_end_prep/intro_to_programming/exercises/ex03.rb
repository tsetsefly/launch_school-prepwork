array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts array.select { |x| x.odd? }

puts array.select { |x| x % 2 != 0 }