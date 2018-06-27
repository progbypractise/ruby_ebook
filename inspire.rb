require 'FileUtils'

FileUtils.mkdir_p("System/Hidden")
puts "#{Dir.glob('**/*Hidden*')}"
FileUtils.rm_r("System")
