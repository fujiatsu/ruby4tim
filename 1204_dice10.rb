def dice
  Random.rand(6) + 1
end

def dice10
  sum = 0
  10.times {
    sum += dice
  }
  sum
end

puts dice10