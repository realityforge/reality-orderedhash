$:.unshift File.expand_path('../../lib', __FILE__)

require 'minitest/autorun'
require 'test/unit/assertions'
require 'reality/orderedhash'

class Reality::TestCase < Minitest::Test
  include Test::Unit::Assertions
end
