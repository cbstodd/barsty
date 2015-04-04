ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use! [ # Minitest::Reporters::DefaultReporter.new,
                           # Minitest::Reporters::SpecReporter.new,
                          Minitest::Reporters::ProgressReporter.new,
                           Minitest::Reporters::RubyMineReporter.new(:color => true)]

# MiniTest
class MiniTest::Unit::TestCase
  include FactoryGirl::Syntax::Methods
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
