gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/chisel'
require_relative '../lib/header'
require_relative '../lib/bold'
require_relative '../lib/italicize'
require_relative '../lib/ordered_list'
require_relative '../lib/paragraph'
require_relative '../lib/unordered_list'

class ItalicsTest < Minitest::Test
  def test_it_can_convert_italics
    italics = Italicize.new.convert_italics("*Hello*")
    assert_equal "<em>Hello</em>", italics
  end
end
