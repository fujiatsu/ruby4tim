str = "Ruby is an object oriented progamming language"
length = 0
while length < str.length
  if str[length] == " "
    str[length + 1] = str[length + 1].upcase
  end
  length += 1
end
puts str