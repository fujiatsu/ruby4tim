def tail(rows, file)
  io = open(file)
  rowAry = io.readlines
  puts rowAry.slice!(rowAry.size - rows, rows)
  io.close
end

tail(10,"dummy.txt")