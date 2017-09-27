def str2hash(str)
  ary = str.split(/\s+/)
  hash = {}
  (ary.size / 2).times {|i| hash[ary[2 * i]] = ary[2 * i + 1] }
  return hash
end

str = "blue 青 white 白\nred 赤"
hash = str2hash(str)
hash.each{|key, value| print "#{key}:#{value}\n"}
p hash