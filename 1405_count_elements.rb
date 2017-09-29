str = "Ruby is an object oriented programming language"
hash = Hash.new(0)

str.split("").sort.each{|i| hash[i] += 1 }

hash.each {|k, v| print "#{k}:#{"*" * v}\n" }