a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# b = []

a = a.map do |x|
  x.split
end

puts a

a = a.flatten

p a