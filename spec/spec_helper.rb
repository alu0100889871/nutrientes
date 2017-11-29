$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

require "gema"
#Coveralls with Rspec and Cucumber
require 'coveralls'
Coveralls.wear_merged!
SimpleCov.merge_timeout 3600

#MAKING SURE SIMPLECOV WORKS WITH THE PARALLEL_TESTS GEM
SimpleCov.command_name "RSpec/Cucumber:#{Process.pid.to_s}#{ENV['TEST_ENV_NUMBER']}"
