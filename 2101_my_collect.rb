def my_collect(obj, &block)
  obj.map{|i| block.call(i)}
end

ary = my_collect([1, 2, 3, 4, 5]) do |i|
  i * 2
end

p ary