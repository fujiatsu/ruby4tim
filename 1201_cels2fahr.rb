def cels2fahr(cels)
  9 * cels / 5 + 32
end

if ARGV[0] == nil
  puts "error: no input."
else
  cels = ARGV[0].to_f
  puts "#{cels} cels = #{cels2fahr(cels)} fahr."
end