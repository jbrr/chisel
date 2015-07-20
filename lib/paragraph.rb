class Paragraph
  def convert_paragraph(chunk)
    chunk.insert(0, "<p>\n")
    chunk.insert(-1, "</p>")
  end
end
