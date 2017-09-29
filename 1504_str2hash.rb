def str2hash(str)
  hash = Hash.new
  str.split(/\s+/).each_slice(2) {|a ,b| hash[a] = b }
  hash
end

str = "blue 青  white 白\nred 赤"
hash = str2hash(str)
hash.each{|key, value| print "#{key}:#{value}\n"}