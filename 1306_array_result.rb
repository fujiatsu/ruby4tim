ary = [*1..100]
result = Array.new

10.times{|i|
  result << ary[10 * i, 10]
}

print "result = #{result}\n"