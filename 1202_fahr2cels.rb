def fahr2cels(fahr)
  5 * ( fahr - 32 ) / 9
end

if ARGV[0] == nil
  puts "error: no input."
else
  fahr = ARGV[0].to_f
  puts "#{fahr} fahr = #{fahr2cels(fahr)} cels."
end