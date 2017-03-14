arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if do |x|
  # x.start_with?('s') || x.start_with?('w')
  x.start_with?('s', 'w')
end

puts arr