opposites = {positive: "negative", up: "down", right: "left"}

puts "keys"
opposites.each_key {|key| puts key}
puts "values"
opposites.each_value {|value| puts value}
puts "keys and values"
opposites.each {|key, value| puts "The opposites of #{key} is #{value}."}