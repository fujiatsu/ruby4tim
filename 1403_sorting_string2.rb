str = "Ruby is an object oriented programming language"

puts str.split(/ /).sort_by{|item| item.downcase }