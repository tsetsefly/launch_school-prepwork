
x = [1, 2, 4, 5, 10]

x.each_with_index do |y, n|
  puts "#{n + 1} = #{y}"
end

each_with_index(x)