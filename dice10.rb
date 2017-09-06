def dice()
  Random.rand(6) + 1
end

sum = 0

10.times do |i|
  sum += dice()
end

puts sum