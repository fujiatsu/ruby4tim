str = "Ruby is an object oriented progamming language"
strAry = []
length = 0
while length < str.length
  strAry << str[length]
  length += 1
end
strAry.sort!
elm = strAry[0]
count = ""
while !strAry.empty?
  shiftAry = strAry.shift
  if shiftAry == elm
    count += "*"
  else
    puts "\'#{elm}\': #{count}"
    elm = shiftAry
    count = "*"
  end
  if strAry.empty?
    puts "\'#{elm}\': #{count}"
  end
end