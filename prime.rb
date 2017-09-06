def prime?(num)
  if num < 2
    return false
  end
  2.upto(Math.sqrt(num)) do |i|
    if num.modulo(i) == 0
      return false
    end
  end
  return true
end

puts "#{ARGV[0].to_i} is prime?",prime?(ARGV[0].to_i)