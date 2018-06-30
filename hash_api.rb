require 'json'
require 'net/http'

uri = URI.parse("https://jsonplaceholder.typicode.com/posts/")
https = Net::HTTP.new(uri.host, uri.port)
https.use_ssl = true

body = Hash.new
body['title'] = '@ProgByPractise'
body['body'] = 'Awesome Guy'
body['userId'] = 1

request = Net::HTTP::Post.new(uri.path)
request['Content-Type'] = 'application/json'
request.body = body.to_json

response = JSON.parse(https.request(request).body)

puts "Title : #{response['title']}"
puts "Body  : #{response['body']}"
