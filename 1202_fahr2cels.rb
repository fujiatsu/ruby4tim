def fahr2cels(fahr)
  5 * ( fahr - 32 ) / 9
end

puts "#{ARGV[0].to_f} ℉ = #{fahr2cels(ARGV[0].to_f)} ℃"