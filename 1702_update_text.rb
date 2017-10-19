def reverse(file)
  File.open(file, "r+") do |io|
    lines = io.readlines
    io.rewind
    io.truncate(0)
    io.write(lines.reverse.join())
  end
end

def first(file)
  File.open(file, "r+") do |io|
    lines = io.readlines
    io.rewind
    io.truncate(0)
    io.write(lines[0])
  end
end

def last(file)
  File.open(file, "r+") do |io|
    lines = io.readlines
    io.rewind
    io.truncate(0)
    io.write(lines.reverse[0])
  end
end

reverse("dummy.txt")
first("dummy2.txt")
last("dummy3.txt")