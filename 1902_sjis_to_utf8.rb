io = File.open("こんにちは.txt", "r:Shift_JIS:UTF-8")
puts io.read
puts io.read.encoding
io.close