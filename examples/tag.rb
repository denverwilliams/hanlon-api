require 'hanlon/api'
require 'pry-byebug'
SERVER="http://127.0.0.1:8026/hanlon/api/v1"

Hanlon::Api.configure do |config|
  config.api_url = "#{SERVER}"
end

puts Hanlon::Api::Node.list
#pol1=Hanlon::Api::Policybinding.pry.find(Hanlon::Api::Policy.list.first)
#am1=Hanlon::Api::ActiveModel.filter('root_policy',pol1.uuid)
#am1=Hanlon::Api::ActiveModel.find(Hanlon::Api::ActiveModel.list.first)
binding.pry
puts "end"

