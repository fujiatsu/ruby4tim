a = [*1..100]

a2 = a.collect {|item| item * 100}

a.collect! {|item| item * 100}

print "a2 = #{a2}\n"
print "a = #{a}\n"