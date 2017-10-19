File.open("dummy.txt") do |io|
  lines = 0
  words = 0
  chars = 0
  io.each_line do |line|
    line.chomp!
    words += line.split("\s").length
    chars += line.length
  end
  puts "#lines:#{io.lineno}"
  puts "#words:#{words}"
  puts "#chars:#{chars}"
end