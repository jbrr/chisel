class Bold
  def convert_bold(chunk)
    if chunk.include? "**"
      chunk.sub!("**", "<strong>")
      chunk.sub!("**", "</strong>")
    else
      chunk
    end
  end
end
