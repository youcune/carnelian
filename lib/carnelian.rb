require 'carnelian/version'

Dir["#{File.dirname(__FILE__)}/core_ext/*.rb"].each do |_|
  require _
end
