def kan2num(kan)
  num = 0
  numHash = { "一"=>1, "二"=>2, "三"=>3, "四"=>4,"五"=>5, "六"=>6, "七"=>7, "八"=>8, "九"=>9, "十"=>10, "百"=>100, "千"=>1000,}
  kanAry = kan.split("").map{|a| numHash[a] }
  kanAry.each_cons(2) do |a,b|
    a < b ? num += a * b:
    b >= 10 ? num += b:
    num
  end
  kanAry.last < 10 ? num += kanAry.last : num
end

kan = "七千百二十三"
puts kan2num(kan)

kan2 = "九千九百九十九"
puts kan2num(kan2)

kan3 = "六千八十"
puts kan2num(kan3)