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

if ARGV[0] == nil
  puts "error: no input."
else
  num = ARGV[0].to_i
  puts "#{num} is prime?",prime?(num)
end
