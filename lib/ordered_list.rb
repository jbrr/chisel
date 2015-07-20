class OrderedList
  def convert_ordered_list(chunk)
    # puts "chunk1", chunk
    #chunk.insert(0, "<ol>\n")
    #chunk.insert(-1, "\n</ol>")
    # puts "chunk2", chunk.inspect
    lines = chunk.split "\n"
    #puts "lines", lines.inspect
    ol_convert = lines.map do |line|
      line[0..2] = ""
      # puts "line1", line
      line.insert(0, "<li>")
      # puts "line2", line
      line.insert(-1, "</li>")
      # puts "line3", line
    end
    chunk = ol_convert.join("\n")
    chunk.insert(0, "<ol>\n")
    chunk.insert(-1, "\n</ol>")
    #puts "chunk.inspect", chunk.inspect
  end
end
