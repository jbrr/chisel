require_relative 'header'
require_relative 'paragraph'
require_relative 'bold'
require_relative 'italicize'
require_relative 'unordered_list'
require_relative 'ordered_list'

class Chisel

  def makes_chunks(string_md)
    @output = string_md.split("\n\n")
    sort
  end

  def sort
    sorted_chunks = @output.map do |chunk|
      if chunk[0] == "#"
        Header.new.convert_header(chunk)
      elsif chunk[0].to_i.class == Fixnum && chunk[1] == "."
        OrderedList.new.convert_ordered_list(chunk)
      elsif chunk[0] == "*" && chunk[1] == " "
        UnorderedList.new.convert_unordered_list(chunk)
      else
        Paragraph.new.convert_paragraph(chunk)
        Style.new.stylize(chunk)
      end
      #Style.new.stylize(chunk)
    end
  end
end

class Style
  def stylize(chunk)
      Bold.new.convert_bold(chunk)
      Italicize.new.convert_italics(chunk)
  end
end

string_md = File.read(ARGV[0])
string_html = Chisel.new
puts string_html.makes_chunks(string_md)
f = File.open "../output.html", "w"
f.write string_html.makes_chunks(string_md).join
f.close
