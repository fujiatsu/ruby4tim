ary = Array.new
result = Array.new

100.times{|i|
  ary << i+1
}

10.times{|i|
  result << ary[10 * i, 10]
}

print "result = #{result}\n"