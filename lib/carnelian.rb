require 'carnelian/version'

Dir["#{File.dirname(__FILE__)}/core/*.rb"].each do |_|
  require _
end
