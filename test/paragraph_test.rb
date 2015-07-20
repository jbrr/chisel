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

class ParagraphTest < Minitest::Test
  def test_it_can_mark_a_paragraph
    paragraph = Paragraph.new.convert_paragraph("Hello")
    assert_equal "<p>\nHello</p>", paragraph
  end
end
