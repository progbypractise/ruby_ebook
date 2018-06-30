array = ['a','b','c','d','e','f']
puts "Here's the array:#{array}. Now enter which element you want to see."
puts "And give you BEST shot at breaking this program"
print "Enter option [0 to 5]:"

option = gets.chomp
begin 
	
	option = Integer(option)
	raise IndexError if option < 0 || option > 5

	puts "Option:[#{option}]"
	puts array[option]

rescue ArgumentError
	puts "Nah nah nah.. Please enter a number from [0 to 5]"
rescue IndexError
	puts "Oops. I caught it again. Try again and enter a number from [0 to 5]"
rescue => e
	puts "I had no idea you could trigger [#{e.message}], but I still caught it. So kudos to both of us"
end
