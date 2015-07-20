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

class HeaderTest < Minitest::Test

  def test_it_can_convert_header_1
    header = Header.new.convert_header("# Hello")
    assert_equal "<h1> Hello</h1>", header
  end

  def test_it_can_convert_header_2
    header = Header.new.convert_header("## Hello")
    assert_equal "<h2> Hello</h2>", header
  end

  def test_it_can_convert_header_6
    header = Header.new.convert_header("###### Hello")
    assert_equal "<h6> Hello</h6>", header
  end
end
