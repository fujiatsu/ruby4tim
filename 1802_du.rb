def du(dir)
  puts FileTest.size(dir)
end

du(ARGV[0])