a = Array.new

100.times do |i|
  a << i + 1
end

a3 = a.reject{|item| item % 3 != 0}
a.delete_if{|item| item % 3 != 0}

print "a3 = #{a3}\n"
print "a = #{a}\n"