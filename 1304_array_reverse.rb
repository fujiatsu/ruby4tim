a = Array.new

100.times do |i|
  a << i + 1
end

a.reverse!

print "a = #{a}\n"