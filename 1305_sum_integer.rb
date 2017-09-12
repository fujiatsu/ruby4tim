a = Array.new
sum = 0

100.times do |i|
  a << i + 1
end

a.each{|elem|
  sum += elem
}

print "sum = #{sum}\n"