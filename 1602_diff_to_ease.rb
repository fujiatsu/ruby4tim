str = "正規表現は難しい！　なんて難しいんだ！"
puts "Before..." + str
puts "After..." + str.gsub(/(難しい)/, "簡単な").gsub(/な！/, "だ！")