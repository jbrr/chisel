class UnorderedList
  def convert_unordered_list(chunk)
    lines = chunk.split("\n")
    ul_convert = lines.map do |line|
      line[0..1] = ""
      line.insert(0, "<li>")
      line.insert(-1, "</li>")
    end
    chunk = ul_convert.join("\n")
    chunk = "<ul>\n #{chunk}\n</ul>"
    # chunk.insert(0, "<ul>\n")
    # chunk.insert(-1, "\n</ul>")
  end
end
