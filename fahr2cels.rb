def fahr2cels(fahr)
  p 5 * ( fahr - 32 ) / 9
end

fahr2cels(ARGV[0].to_f)