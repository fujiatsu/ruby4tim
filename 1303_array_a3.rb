a = [*1..100]

a3 = a.select{|item| item % 3 == 0}
a.delete_if{|item| item % 3 == 0}

print "a3 = #{a3}\n"
print "a = #{a}\n"