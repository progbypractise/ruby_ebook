require 'json'

data = Hash.new
data['dad'] = 'drug dealer'
data['mom'] = 'stripper'
data['son'] = 'virgin'
data['daughter'] = 'runaway'

puts data.to_json
