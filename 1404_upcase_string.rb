str = "Ruby is an object oriented programming language"

puts str.split(/ /).map{|x| x.capitalize}.join(" ")