class Header
  def convert_header(chunk)
    crunch_count = chunk.count("#")
    chunk.delete!("#")
    chunk.insert(0, "<h#{crunch_count}>")
    chunk.insert(-1, "</h#{crunch_count}>")
  end
end
