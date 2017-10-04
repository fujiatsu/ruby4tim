def word_capitalize(str)
  return str.gsub(/\w+(?=-)|(?<=-)\w+/){|a| a.capitalize }
end

puts word_capitalize("in-reply-to")
puts word_capitalize("X-MAILER")