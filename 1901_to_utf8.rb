#encoding: utf-8

def to_utf8(str_euc, str_sjis)
  str_utf8 = str_euc.encode!("UTF-8") + str_sjis.encode("UTF-8")
end

lname = "ふじい".encode!("EUC-JP")
fname = "あつし".encode!("Shift_JIS")
name = to_utf8(lname, fname)

puts name
puts name.encoding