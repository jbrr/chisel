require 'minitest/autorun'
require_relative '../lib/chisel'

class ChiselTest
  def it_can_split_input_on_two_new_lines
    input = "Hello\n\n World"
    output = Chisel.new.makes_chunks(input)
    assert_equal output, ["Hello", " World"]
  end
end
