a = Array.new

100.times do |i|
  a << i + 1
end

a2 = a.collect {|item| item * 100}

a.collect! {|item| item * 100}

print "a2 = #{a2}\n"
print "a = #{a}\n"