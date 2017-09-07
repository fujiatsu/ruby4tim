def cels2fahr(cels)
  cels * 9 / 5 + 32
end

puts "#{ARGV[0].to_f} ℃ = #{cels2fahr(ARGV[0].to_f)} ℉"