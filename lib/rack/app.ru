$:.unshift File.dirname(__FILE__)
require 'simple_framework'

route("/hello") do
  "Hello #{params['name'] || "World"}!"
end

route("/goodbye") do
  status 500
  "Goodbye Cruel World!"
end

run SimpleFramework.app
