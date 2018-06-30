index = 0
loop do
  index += 1
  puts "#{index} x 2 = #{index*2}"
  break if index > 99
end

index = 1
while index<101
	puts "#{index} x 2 = #{index*2}"
	index = index + 1
end

for index in 1..100 do
	puts "#{index} x 2 = #{index * 2}"
end
