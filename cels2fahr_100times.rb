def cels2fahr(cels)
  p cels * 9 / 5 + 32
end

1.upto(100) do |i|
  print "#{i}℃ = #{cels2fahr(i.to_f)}℉\n"
end