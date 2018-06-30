require "open-uri"

def search(input, choice)
	if(choice==1)
		puts (if File.read(FILE_NAME).include?(input) then "Found in file" else "Not found in file" end)
	else
		web_output = URI.parse("https://google.com/search?q=#{input}").read
		# Uncomment below, if you want to see google's search result. It's huge!!!
		# puts "Result:#{web_output}"
		puts (if web_output.include?(input) then "Found in Google" else "Unbelievable!Not found by Google" end)
	end
end

FILE_NAME="sample.txt"
File.open(FILE_NAME,"w"){|file| file.puts "Sample input"}

puts "Enter search string:"
input = gets.chomp
puts "Enter where to search (1. File, 2. Google):"
choice = gets.chomp.to_i

raise "Invalid input (must be either 1 or 2)" unless choice>0 && choice <3
search(input, choice)

