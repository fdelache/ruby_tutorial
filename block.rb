def sandwich
  puts "top bread"
  yield
  puts "bottom bread"
end

sandwich do
  puts "mutton, lettuce, and tomato"
end

def tag(tagname, text)
  html = "<#{tagname}>#{text}</#{tagname}>"
  yield html
end

tag("p", "Lorem ipsum dolor sit amet") do |markup|
  puts markup
end

99.downto(1) do |i|
  puts "#{i} bottles of beer on the wall" if i > 1
  puts "#{i} bottle of beer on the wall" if i == 1
end

def bad_sandwich(contents)
  puts "top bread"
  contents
  puts "bottom bread"
end

bad_sandwich(puts "mutton, lettuce, and tomato")
