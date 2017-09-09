def cels2fahr(cels)
  9 * cels / 5 + 32
end

1.upto(100) do |i|
  print "#{i} cels = #{cels2fahr(i.to_f)} fahr.\n"
end