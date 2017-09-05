def cels2fahr(cels)
  p cels * 9 / 5 + 32
end

cels2fahr(ARGV[0].to_f)