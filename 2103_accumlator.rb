def accumlator
  total = 0
  Proc.new do
    total += 1
    total * (total + 1) / 2
  end
end

acc = accumlator
p acc.call(1)
p acc.call(2)
p acc.call(3)
p acc.call(4)