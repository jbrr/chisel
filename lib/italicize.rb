class Italicize
  def convert_italics(chunk)
    if chunk.include? "*"
      chunk.sub!("*", "<em>")
      chunk.sub!("*", "</em>")
    else
      chunk
    end
  end
end

# class Italicize
#   def convert_italics(chunk)
#     characters = chunk.split("")
#     counter = 0
#     characters.map do |character|
#       if character == "*" && counter.even?
#         character.sub!("*", "<em>")
#         counter += 1
#       elsif character == "*" && counter.odd?
#         character.sub!("*", "</em>")
#         counter += 1
#       end
#     end
#     chunk = characters.join("")
#   end
# end
